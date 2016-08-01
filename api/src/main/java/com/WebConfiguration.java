package com;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.context.annotation.Bean;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.SerializationFeature;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import com.fasterxml.jackson.databind.ObjectMapper;

import net.kaczmarzyk.spring.data.jpa.web.SpecificationArgumentResolver;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.data.web.PageableHandlerMethodArgumentResolver;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;



@ComponentScan(basePackages="net.kaczmarzyk")
@EnableJpaRepositories

@Configuration
@EnableWebMvc
@EnableAutoConfiguration
public class WebConfiguration extends WebMvcConfigurerAdapter {

    @Autowired
    private ObjectMapper mapper;


    @Override
    public void addArgumentResolvers(List<HandlerMethodArgumentResolver> argumentResolvers) {
        argumentResolvers.add(new SpecificationArgumentResolver());
        argumentResolvers.add(new PageableHandlerMethodArgumentResolver());
    }

    @Override
    public void extendMessageConverters(List<HttpMessageConverter<?>> converters) {
        converters.replaceAll(oneConverter -> {
            if (oneConverter instanceof MappingJackson2HttpMessageConverter) {
                MappingJackson2HttpMessageConverter converter = new MappingJackson2HttpMessageConverter(mapper) {

                    protected void writePrefix(JsonGenerator generator, Object object) throws IOException {

                        RequestAttributes attributes = RequestContextHolder.getRequestAttributes();
                        if (attributes != null && attributes instanceof ServletRequestAttributes) {
                            String attribute = ((ServletRequestAttributes) attributes).getRequest().getParameter("pretty");
                            if (attribute != null) {
                                generator.setPrettyPrinter(new DefaultPrettyPrinter());
                            }
                        }
                        super.writePrefix(generator, object);
                    }
                };
                return converter;

            } else {
                return oneConverter;
            }
        });
    }

    @Bean
    public MappingJackson2HttpMessageConverter mappingJackson2HttpMessageConverter() {
        MappingJackson2HttpMessageConverter jsonConverter = new MappingJackson2HttpMessageConverter();
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        objectMapper.configure(SerializationFeature.FAIL_ON_EMPTY_BEANS, false);
        jsonConverter.setObjectMapper(objectMapper);
        return jsonConverter;
    }
}


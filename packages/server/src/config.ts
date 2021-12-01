import { NestFactory } from '@nestjs/core';
import AppModule from '~/app.module';
import { DocumentBuilder, SwaggerModule } from '@nestjs/swagger';
import { INestApplication } from '@nestjs/common';

export async function configure(): Promise<INestApplication> {
  const app = await NestFactory.create(AppModule, {
    logger:
      process.env.NODE_ENV === 'development'
        ? ['log', 'debug', 'error', 'verbose', 'warn']
        : ['log', 'error', 'warn'],
    cors: true,
  });

  // swagger
  const swaggerConfig = new DocumentBuilder()
    .setTitle('Node JS Server')
    .setDescription('Blank Node Server')
    .setVersion('1.0')
    .build();
  const document = SwaggerModule.createDocument(app, swaggerConfig);
  SwaggerModule.setup('docs', app, document);

  return app;
}

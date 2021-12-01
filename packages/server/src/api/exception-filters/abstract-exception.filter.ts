import { ArgumentsHost, ExceptionFilter } from '@nestjs/common';
import { Request, Response } from 'express';

export default abstract class AbstractExceptionFilter
  implements ExceptionFilter {
  abstract catch(exception: any, host: ArgumentsHost): any;

  manageResponse(host: ArgumentsHost, status: number, message?: string) {
    const ctx = host.switchToHttp();
    const response = ctx.getResponse<Response>();
    const request = ctx.getRequest<Request>();

    response.status(status).json({
      statusCode: status,
      timestamp: new Date().toISOString(),
      path: request.url,
      message: message,
    });
  }
}

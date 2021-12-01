import { Controller, Get } from '@nestjs/common';
import { ApiTags } from '@nestjs/swagger';

@ApiTags('health')
@Controller('/health')
export default class HealthController {
  @Get()
  health(): string {
    return 'UP';
  }
}

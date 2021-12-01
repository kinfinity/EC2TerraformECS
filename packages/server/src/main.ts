import { ConfigService } from '@nestjs/config';
import { configure } from '~/config';
import { Logger } from '@nestjs/common';

const logger = new Logger('Node Server');

async function bootstrap() {
  const app = await configure();

  const config = app.get(ConfigService);
  await app.listen(config.get<number>('PORT') || 3000, () =>
    logger.log('App started'),
  );
}
bootstrap();

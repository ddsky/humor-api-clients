export * from './jokes.service';
import { JokesService } from './jokes.service';
export * from './memes.service';
import { MemesService } from './memes.service';
export * from './other.service';
import { OtherService } from './other.service';
export const APIS = [JokesService, MemesService, OtherService];

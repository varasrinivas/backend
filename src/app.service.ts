import { Injectable, HttpService } from '@nestjs/common';

@Injectable()
export class AppService {
  constructor(private readonly HttpService: HttpService){}
  async getData(): Promise<any> {
    let response: null;
    response = await (await this.HttpService.get('https://dummyjson.com/products/1').toPromise()).data;
    console.log(response);
    return response;
  }
}

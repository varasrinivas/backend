import { Injectable, HttpService } from '@nestjs/common';

@Injectable()
export class AppService {
  constructor(private readonly HttpService: HttpService){}
  async getData(): Promise<any> {
    let response: null;
    response = await (await this.HttpService.get('http://backend-1-service.default.svc.cluster.local').toPromise()).data;
    console.log(response);
    return response;
  }
}

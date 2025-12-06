import { Injectable } from "@nestjs/common";
import { ViettelModem } from "../libs/ViettelModem.js";




@Injectable()
export class ViettelService {

    async onModuleInit() {
        console.log("ViettelService initialized");
        const vt = new ViettelModem('192.168.2.1')
        await vt.login('admin', 'Duongvanba1997@') 
        const arp = await vt.getArpTable()
        console.log({arp});
    }
}

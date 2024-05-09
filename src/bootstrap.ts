import { platformBrowserDynamic } from "@angular/platform-browser-dynamic";

import { AppModule } from "./app/app.module";

platformBrowserDynamic()
    .bootstrapModule(AppModule, {preserveWhitespaces:true})
    .then(()=>{console.log("Application started")})
    .catch(err=>console.error(err));
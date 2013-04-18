.class final Lcom/keniu/security/protection/m;
.super Landroid/os/Handler;
.source "LocationInfoManager.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/l;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/l;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/keniu/security/protection/m;->a:Lcom/keniu/security/protection/l;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 145
    const-string v0, "LocationInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin gpsenable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/protection/m;->a:Lcom/keniu/security/protection/l;

    invoke-static {v2}, Lcom/keniu/security/protection/l;->a(Lcom/keniu/security/protection/l;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lcom/keniu/security/protection/m;->a:Lcom/keniu/security/protection/l;

    iget-object v0, p0, Lcom/keniu/security/protection/m;->a:Lcom/keniu/security/protection/l;

    invoke-static {v0}, Lcom/keniu/security/protection/l;->b(Lcom/keniu/security/protection/l;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-static {v1, v0}, Lcom/keniu/security/protection/l;->a(Lcom/keniu/security/protection/l;Landroid/location/LocationManager;)Landroid/location/LocationManager;

    .line 148
    const-string v0, "LocationInfoManager"

    const-string v1, "register tuba location listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/keniu/security/protection/m;->a:Lcom/keniu/security/protection/l;

    invoke-static {v0}, Lcom/keniu/security/protection/l;->c(Lcom/keniu/security/protection/l;)Lcom/c/a/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/keniu/security/protection/m;->a:Lcom/keniu/security/protection/l;

    new-instance v1, Lcom/c/a/a/a;

    iget-object v2, p0, Lcom/keniu/security/protection/m;->a:Lcom/keniu/security/protection/l;

    invoke-static {v2}, Lcom/keniu/security/protection/l;->b(Lcom/keniu/security/protection/l;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/c/a/a/a;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/keniu/security/protection/l;->a(Lcom/keniu/security/protection/l;Lcom/c/a/a/a;)Lcom/c/a/a/a;

    .line 151
    iget-object v0, p0, Lcom/keniu/security/protection/m;->a:Lcom/keniu/security/protection/l;

    invoke-static {v0}, Lcom/keniu/security/protection/l;->c(Lcom/keniu/security/protection/l;)Lcom/c/a/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/protection/m;->a:Lcom/keniu/security/protection/l;

    iget-object v1, v1, Lcom/keniu/security/protection/l;->a:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Lcom/c/a/a/a;->a(Landroid/location/LocationListener;)Ljava/lang/String;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/protection/m;->a:Lcom/keniu/security/protection/l;

    invoke-static {v0}, Lcom/keniu/security/protection/l;->c(Lcom/keniu/security/protection/l;)Lcom/c/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/a/a;->a()V

    .line 155
    iget-object v0, p0, Lcom/keniu/security/protection/m;->a:Lcom/keniu/security/protection/l;

    invoke-static {v0}, Lcom/keniu/security/protection/l;->d(Lcom/keniu/security/protection/l;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 158
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_5

    .line 160
    :try_start_0
    const-string v0, "LocationInfoManager"

    const-string v1, "unregister tuba location listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/keniu/security/protection/m;->a:Lcom/keniu/security/protection/l;

    invoke-static {v0}, Lcom/keniu/security/protection/l;->c(Lcom/keniu/security/protection/l;)Lcom/c/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 162
    const-string v0, "LocationInfoManager"

    const-string v1, "close tuba location listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/keniu/security/protection/m;->a:Lcom/keniu/security/protection/l;

    invoke-static {v0}, Lcom/keniu/security/protection/l;->c(Lcom/keniu/security/protection/l;)Lcom/c/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/a/a;->c()V

    .line 164
    iget-object v0, p0, Lcom/keniu/security/protection/m;->a:Lcom/keniu/security/protection/l;

    invoke-static {v0}, Lcom/keniu/security/protection/l;->c(Lcom/keniu/security/protection/l;)Lcom/c/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/a/a;->b()V

    .line 165
    iget-object v0, p0, Lcom/keniu/security/protection/m;->a:Lcom/keniu/security/protection/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/keniu/security/protection/l;->a(Lcom/keniu/security/protection/l;Lcom/c/a/a/a;)Lcom/c/a/a/a;

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/protection/m;->a:Lcom/keniu/security/protection/l;

    invoke-static {v0}, Lcom/keniu/security/protection/l;->e(Lcom/keniu/security/protection/l;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 226
    :cond_3
    :goto_0
    return-void

    .line 169
    :cond_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 170
    const-string v1, "addr_cn"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    const-string v2, "longitude"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    const-string v3, "latitude"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    const-string v3, "LocationInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tuba:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-eqz v2, :cond_7

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz v0, :cond_7

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 178
    iget-object v3, p0, Lcom/keniu/security/protection/m;->a:Lcom/keniu/security/protection/l;

    const-string v4, "TUBA"

    invoke-static {v3, v2, v0, v1, v4}, Lcom/keniu/security/protection/l;->a(Lcom/keniu/security/protection/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_5
    :goto_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 206
    :try_start_1
    const-string v0, "LocationInfoManager"

    const-string v1, "unregister android location listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/keniu/security/protection/m;->a:Lcom/keniu/security/protection/l;

    invoke-static {v0}, Lcom/keniu/security/protection/l;->f(Lcom/keniu/security/protection/l;)Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 208
    iget-object v0, p0, Lcom/keniu/security/protection/m;->a:Lcom/keniu/security/protection/l;

    invoke-static {v0}, Lcom/keniu/security/protection/l;->f(Lcom/keniu/security/protection/l;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/protection/m;->a:Lcom/keniu/security/protection/l;

    iget-object v1, v1, Lcom/keniu/security/protection/l;->b:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 210
    iget-object v0, p0, Lcom/keniu/security/protection/m;->a:Lcom/keniu/security/protection/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/keniu/security/protection/l;->a(Lcom/keniu/security/protection/l;Landroid/location/LocationManager;)Landroid/location/LocationManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 215
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/keniu/security/protection/m;->a:Lcom/keniu/security/protection/l;

    invoke-static {v0}, Lcom/keniu/security/protection/l;->e(Lcom/keniu/security/protection/l;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 217
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 218
    const-string v1, "addr_cn"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    const-string v2, "longitude"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    const-string v3, "latitude"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    const-string v3, "LocationInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v3, p0, Lcom/keniu/security/protection/m;->a:Lcom/keniu/security/protection/l;

    const-string v4, "ANDROID"

    invoke-static {v3, v2, v0, v1, v4}, Lcom/keniu/security/protection/l;->a(Lcom/keniu/security/protection/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    :cond_7
    :try_start_2
    const-string v0, "LocationInfoManager"

    const-string v1, "register android location listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/keniu/security/protection/m;->a:Lcom/keniu/security/protection/l;

    invoke-static {v0}, Lcom/keniu/security/protection/l;->f(Lcom/keniu/security/protection/l;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    const-wide/16 v2, 0x1388

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/keniu/security/protection/m;->a:Lcom/keniu/security/protection/l;

    iget-object v5, v5, Lcom/keniu/security/protection/l;->b:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 186
    iget-object v0, p0, Lcom/keniu/security/protection/m;->a:Lcom/keniu/security/protection/l;

    invoke-static {v0}, Lcom/keniu/security/protection/l;->f(Lcom/keniu/security/protection/l;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    const-wide/16 v2, 0x1388

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/keniu/security/protection/m;->a:Lcom/keniu/security/protection/l;

    iget-object v5, v5, Lcom/keniu/security/protection/l;->b:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 190
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 191
    new-instance v1, Lcom/keniu/security/protection/n;

    invoke-direct {v1, p0}, Lcom/keniu/security/protection/n;-><init>(Lcom/keniu/security/protection/m;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 200
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 212
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method

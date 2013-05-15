.class Lcom/avast/android/mobilesecurity/service/b;
.super Ljava/lang/Object;
.source "UpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/avast/android/mobilesecurity/service/UpdateService;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/service/UpdateService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/service/b;->b:Lcom/avast/android/mobilesecurity/service/UpdateService;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/service/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/b;->b:Lcom/avast/android/mobilesecurity/service/UpdateService;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;)Lcom/avast/android/mobilesecurity/engine/al;

    move-result-object v0

    .line 164
    const-string v1, "UpdateService: calling engine update based on connectivity changed failsafe"

    invoke-static {v1}, Lcom/avast/android/generic/util/m;->d(Ljava/lang/String;)I

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/service/b;->b:Lcom/avast/android/mobilesecurity/service/UpdateService;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/service/b;->b:Lcom/avast/android/mobilesecurity/service/UpdateService;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/service/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/engine/r;)Lcom/avast/android/mobilesecurity/engine/af;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avast/android/mobilesecurity/service/UpdateService;->a(Lcom/avast/android/mobilesecurity/service/UpdateService;Lcom/avast/android/mobilesecurity/engine/af;)Lcom/avast/android/mobilesecurity/engine/af;

    .line 167
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/service/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/receiver/ConnectivityChangeReceiver;->a(Landroid/content/Context;)V

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateService: on connectivity changed failsafe update finished with result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/service/b;->b:Lcom/avast/android/mobilesecurity/service/UpdateService;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/service/UpdateService;->b(Lcom/avast/android/mobilesecurity/service/UpdateService;)Lcom/avast/android/mobilesecurity/engine/af;

    move-result-object v2

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/generic/util/m;->d(Ljava/lang/String;)I

    .line 171
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/service/b;->b:Lcom/avast/android/mobilesecurity/service/UpdateService;

    invoke-static {v1, v0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->a(Lcom/avast/android/mobilesecurity/service/UpdateService;Lcom/avast/android/mobilesecurity/engine/al;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    invoke-static {}, La/a/a/a/a/a;->a()La/a/a/a/a/a;

    move-result-object v1

    const-string v2, "UpdateService: VPS Update fail"

    invoke-virtual {v1, v2, v0}, La/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

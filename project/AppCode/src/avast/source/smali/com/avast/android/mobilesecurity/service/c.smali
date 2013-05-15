.class Lcom/avast/android/mobilesecurity/service/c;
.super Ljava/lang/Object;
.source "UpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/service/UpdateService;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/service/UpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/service/c;->a:Lcom/avast/android/mobilesecurity/service/UpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/service/c;->a:Lcom/avast/android/mobilesecurity/service/UpdateService;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;)Lcom/avast/android/mobilesecurity/engine/al;

    move-result-object v0

    .line 192
    const-string v1, "UpdateService: calling engine update"

    invoke-static {v1}, Lcom/avast/android/generic/util/m;->d(Ljava/lang/String;)I

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/service/c;->a:Lcom/avast/android/mobilesecurity/service/UpdateService;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/service/c;->a:Lcom/avast/android/mobilesecurity/service/UpdateService;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/service/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/engine/r;)Lcom/avast/android/mobilesecurity/engine/af;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avast/android/mobilesecurity/service/UpdateService;->a(Lcom/avast/android/mobilesecurity/service/UpdateService;Lcom/avast/android/mobilesecurity/engine/af;)Lcom/avast/android/mobilesecurity/engine/af;

    .line 195
    const-string v1, "UpdateService: end of engine update, going to handle result now"

    invoke-static {v1}, Lcom/avast/android/generic/util/m;->d(Ljava/lang/String;)I

    .line 196
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/service/c;->a:Lcom/avast/android/mobilesecurity/service/UpdateService;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/service/UpdateService;->c(Lcom/avast/android/mobilesecurity/service/UpdateService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 197
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/service/c;->a:Lcom/avast/android/mobilesecurity/service/UpdateService;

    invoke-static {v1, v0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->a(Lcom/avast/android/mobilesecurity/service/UpdateService;Lcom/avast/android/mobilesecurity/engine/al;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    invoke-static {}, La/a/a/a/a/a;->a()La/a/a/a/a/a;

    move-result-object v1

    const-string v2, "UpdateService: VPS Update fail"

    invoke-virtual {v1, v2, v0}, La/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

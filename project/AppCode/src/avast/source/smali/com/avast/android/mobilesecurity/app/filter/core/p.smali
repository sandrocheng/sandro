.class Lcom/avast/android/mobilesecurity/app/filter/core/p;
.super Ljava/lang/Object;
.source "PhoneStateChangeReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/filter/core/p;->a:Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 171
    :try_start_0
    invoke-static {}, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->c()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {}, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->b()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 173
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    invoke-static {}, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->d()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {}, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->b()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneCallBlocker: setRadio(true) result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 186
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/p;->a:Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    const-string v1, "PhoneCallBlocker: FATAL ERROR: could not connect to telephony subsystem"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

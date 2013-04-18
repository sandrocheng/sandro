.class final Lcom/keniu/security/service/o;
.super Ljava/lang/Object;
.source "StartupReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/keniu/security/service/n;


# direct methods
.method constructor <init>(Lcom/keniu/security/service/n;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/keniu/security/service/o;->a:Lcom/keniu/security/service/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 96
    sget-object v0, Lcom/keniu/security/traffic/e;->j:Lcom/keniu/security/malware/bz;

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    sget v1, Lcom/keniu/security/monitor/a;->x:I

    iget-object v2, p0, Lcom/keniu/security/service/o;->a:Lcom/keniu/security/service/n;

    iget-object v2, v2, Lcom/keniu/security/service/n;->b:Lcom/keniu/security/service/StartupReceiver;

    const v3, 0x4fffffff

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 103
    sget-object v0, Lcom/keniu/security/traffic/e;->j:Lcom/keniu/security/malware/bz;

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->c()V

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/service/o;->a:Lcom/keniu/security/service/n;

    iget-object v0, v0, Lcom/keniu/security/service/n;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/e;->a(Landroid/content/Context;Z)Z

    goto :goto_0
.end method

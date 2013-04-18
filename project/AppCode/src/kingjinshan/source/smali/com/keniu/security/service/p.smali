.class final Lcom/keniu/security/service/p;
.super Ljava/lang/Thread;
.source "StartupReceiver.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/service/StartupReceiver;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/keniu/security/service/StartupReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/keniu/security/service/p;->a:Lcom/keniu/security/service/StartupReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 129
    iput-object p2, p0, Lcom/keniu/security/service/p;->b:Landroid/content/Context;

    .line 130
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 134
    iget-object v0, p0, Lcom/keniu/security/service/p;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/util/av;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v5

    .line 136
    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/16 v2, 0x64

    if-ge v0, v2, :cond_1

    .line 138
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 139
    iget-object v2, p0, Lcom/keniu/security/service/p;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/keniu/security/util/av;->c(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 145
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "presentIMSI="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    if-eqz v1, :cond_2

    const-string v0, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    :cond_2
    :goto_1
    return-void

    .line 149
    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isChange="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/service/p;->a:Lcom/keniu/security/service/StartupReceiver;

    iget-object v3, p0, Lcom/keniu/security/service/p;->b:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/keniu/security/service/StartupReceiver;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/keniu/security/service/p;->a:Lcom/keniu/security/service/StartupReceiver;

    iget-object v0, p0, Lcom/keniu/security/service/p;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/keniu/security/service/StartupReceiver;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    iget-object v0, p0, Lcom/keniu/security/service/p;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 157
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Lcom/keniu/security/service/p;->a:Lcom/keniu/security/service/StartupReceiver;

    invoke-static {v2}, Lcom/keniu/security/service/StartupReceiver;->b(Lcom/keniu/security/service/StartupReceiver;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 159
    iget-object v0, p0, Lcom/keniu/security/service/p;->b:Landroid/content/Context;

    const-string v2, "pto"

    const-string v3, "11"

    const-string v4, ""

    invoke-static {v0, v2, v3, v4}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/service/p;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/keniu/security/protection/ui/ag;->h(Landroid/content/Context;Ljava/lang/String;)V

    .line 163
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChangeLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/service/p;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/keniu/security/protection/ui/ag;->j(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/keniu/security/service/p;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/keniu/security/protection/ui/ag;->q(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/keniu/security/service/p;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/protection/ui/ag;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/keniu/security/service/p;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/protection/ui/ag;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/keniu/security/service/p;->b:Landroid/content/Context;

    const-string v1, "pto"

    const-string v2, "10"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/keniu/security/service/p;->a:Lcom/keniu/security/service/StartupReceiver;

    iget-object v0, p0, Lcom/keniu/security/service/p;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/service/StartupReceiver;->a(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_5
    move v2, v5

    .line 163
    goto :goto_2
.end method

.class public Lcom/keniu/security/protection/SmsSentBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsSentBroadcastReceiver.java"


# static fields
.field public static final a:Ljava/lang/String; = "com.keniu.security.protection.SmsSentBroadcastReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 11
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 31
    new-instance v0, Lcom/keniu/security/protection/x;

    invoke-direct {v0, p0}, Lcom/keniu/security/protection/x;-><init>(Lcom/keniu/security/protection/SmsSentBroadcastReceiver;)V

    .line 32
    iput-object p1, v0, Lcom/keniu/security/protection/x;->a:Landroid/content/Context;

    .line 33
    iput-object p2, v0, Lcom/keniu/security/protection/x;->b:Landroid/content/Intent;

    .line 34
    iput-object p0, v0, Lcom/keniu/security/protection/x;->h:Landroid/content/BroadcastReceiver;

    .line 35
    const-string v1, "address"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/protection/x;->c:Ljava/lang/String;

    .line 36
    const-string v1, "body"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/protection/x;->d:Ljava/lang/String;

    .line 37
    const-string v1, "cnt"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/keniu/security/protection/x;->e:I

    .line 38
    const-string v1, "tip"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/keniu/security/protection/x;->f:Z

    .line 39
    invoke-virtual {p0}, Lcom/keniu/security/protection/SmsSentBroadcastReceiver;->getResultCode()I

    move-result v1

    iput v1, v0, Lcom/keniu/security/protection/x;->g:I

    .line 41
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive: cnt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/keniu/security/protection/x;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",body="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/keniu/security/protection/x;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/keniu/security/protection/x;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",tip="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/keniu/security/protection/x;->f:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/keniu/security/protection/x;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v1

    .line 46
    sget v2, Lcom/keniu/security/monitor/a;->w:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/keniu/security/monitor/a;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 48
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 25
    const-string v1, "com.keniu.security.protection.SmsSentBroadcastReceiver"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Lcom/keniu/security/protection/x;

    invoke-direct {v0, p0}, Lcom/keniu/security/protection/x;-><init>(Lcom/keniu/security/protection/SmsSentBroadcastReceiver;)V

    iput-object p1, v0, Lcom/keniu/security/protection/x;->a:Landroid/content/Context;

    iput-object p2, v0, Lcom/keniu/security/protection/x;->b:Landroid/content/Intent;

    iput-object p0, v0, Lcom/keniu/security/protection/x;->h:Landroid/content/BroadcastReceiver;

    const-string v1, "address"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/protection/x;->c:Ljava/lang/String;

    const-string v1, "body"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/protection/x;->d:Ljava/lang/String;

    const-string v1, "cnt"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/keniu/security/protection/x;->e:I

    const-string v1, "tip"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/keniu/security/protection/x;->f:Z

    invoke-virtual {p0}, Lcom/keniu/security/protection/SmsSentBroadcastReceiver;->getResultCode()I

    move-result v1

    iput v1, v0, Lcom/keniu/security/protection/x;->g:I

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive: cnt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/keniu/security/protection/x;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",body="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/keniu/security/protection/x;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/keniu/security/protection/x;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",tip="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/keniu/security/protection/x;->f:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/keniu/security/protection/x;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v1

    sget v2, Lcom/keniu/security/monitor/a;->w:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/keniu/security/monitor/a;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 28
    :cond_0
    return-void
.end method

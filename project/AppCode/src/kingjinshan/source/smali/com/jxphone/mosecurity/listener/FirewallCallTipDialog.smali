.class public Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;
.super Landroid/content/BroadcastReceiver;
.source "FirewallCallTipDialog.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field private static d:Lcom/keniu/security/commui/b;


# instance fields
.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->d:Lcom/keniu/security/commui/b;

    .line 16
    const-string v0, "com.jxphone.mosecurity.listener.FirewallCallTipDialog"

    sput-object v0, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->a:Ljava/lang/String;

    .line 17
    const-string v0, "FirewallCallTipDialog_number"

    sput-object v0, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->b:Ljava/lang/String;

    .line 18
    const-string v0, "FirewallCallTipDialog_desc"

    sput-object v0, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->e:Landroid/content/Context;

    .line 21
    iput-object v0, p0, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()Lcom/keniu/security/commui/b;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->d:Lcom/keniu/security/commui/b;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 70
    sget-object v1, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    sget-object v1, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    sget-object v1, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 75
    return-void
.end method

.method static synthetic b(Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Lcom/keniu/security/commui/b;

    invoke-direct {v0, p1}, Lcom/keniu/security/commui/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->d:Lcom/keniu/security/commui/b;

    .line 29
    sget-object v0, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->f:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->e:Landroid/content/Context;

    .line 32
    sget-object v0, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    const v1, 0x7f0b0209

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 34
    const v2, 0x7f0b0208

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 36
    sget-object v2, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->d:Lcom/keniu/security/commui/b;

    invoke-virtual {v2}, Lcom/keniu/security/commui/b;->a()V

    .line 37
    sget-object v2, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->d:Lcom/keniu/security/commui/b;

    const v3, 0x7f0b020a

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0b020b

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/keniu/security/commui/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->d:Lcom/keniu/security/commui/b;

    new-instance v1, Lcom/jxphone/mosecurity/listener/c;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/listener/c;-><init>(Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;)V

    new-instance v2, Lcom/jxphone/mosecurity/listener/d;

    invoke-direct {v2, p0}, Lcom/jxphone/mosecurity/listener/d;-><init>(Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/commui/b;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 61
    sget-object v0, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->d:Lcom/keniu/security/commui/b;

    invoke-virtual {v0}, Lcom/keniu/security/commui/b;->d()V

    .line 63
    iget-object v0, p0, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/jxphone/mosecurity/listener/FirewallCallTipDialog;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->h(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method

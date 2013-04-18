.class public Lcom/jxphone/mosecurity/d/n;
.super Ljava/lang/Object;
.source "ProgressDialogCallback.java"

# interfaces
.implements Lcom/jxphone/mosecurity/logic/a/a;


# static fields
.field public static final c:I = 0x1

.field public static final d:I = 0x2


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private e:Z

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p3, p0, Lcom/jxphone/mosecurity/d/n;->f:Landroid/os/Handler;

    .line 34
    const-string v0, "ProgressDialogCallback"

    const-string v1, ">>>>new ProgressDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jxphone/mosecurity/d/n;->a:Landroid/app/ProgressDialog;

    .line 37
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/n;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 38
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/n;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 39
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/n;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 40
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/n;->a:Landroid/app/ProgressDialog;

    const v1, 0x7f0b0683

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/jxphone/mosecurity/d/o;

    invoke-direct {v2, p0}, Lcom/jxphone/mosecurity/d/o;-><init>(Lcom/jxphone/mosecurity/d/n;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 46
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 47
    iput v3, v0, Landroid/os/Message;->what:I

    .line 48
    invoke-virtual {p3, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 49
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/n;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/jxphone/mosecurity/d/n;)Z
    .locals 1
    .parameter

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jxphone/mosecurity/d/n;->e:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/n;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 74
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 75
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 76
    iget-object v1, p0, Lcom/jxphone/mosecurity/d/n;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 77
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/n;->a:Landroid/app/ProgressDialog;

    const-string v1, "size"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 59
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/n;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 64
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/d/n;->e:Z

    return v0
.end method

.method public final d()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jxphone/mosecurity/d/n;->a:Landroid/app/ProgressDialog;

    return-object v0
.end method

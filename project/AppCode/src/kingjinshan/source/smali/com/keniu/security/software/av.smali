.class final Lcom/keniu/security/software/av;
.super Ljava/lang/Object;
.source "SoftwareManager2.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/keniu/security/software/SoftwareManager2;

.field private b:Lcom/keniu/security/software/o;


# direct methods
.method public constructor <init>(Lcom/keniu/security/software/SoftwareManager2;Lcom/keniu/security/software/o;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 833
    iput-object p1, p0, Lcom/keniu/security/software/av;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 834
    iput-object p2, p0, Lcom/keniu/security/software/av;->b:Lcom/keniu/security/software/o;

    .line 835
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 838
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/keniu/security/software/av;->b:Lcom/keniu/security/software/o;

    invoke-virtual {v1}, Lcom/keniu/security/software/o;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 839
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    const/4 v0, 0x0

    .line 845
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 846
    const/16 v2, 0x101

    iput v2, v1, Landroid/os/Message;->what:I

    .line 847
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 848
    iget-object v0, p0, Lcom/keniu/security/software/av;->a:Lcom/keniu/security/software/SoftwareManager2;

    iget-object v0, v0, Lcom/keniu/security/software/SoftwareManager2;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 849
    return-void

    .line 843
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

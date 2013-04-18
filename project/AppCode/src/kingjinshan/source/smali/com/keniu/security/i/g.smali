.class final Lcom/keniu/security/i/g;
.super Landroid/os/Handler;
.source "FileDownWatcher.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/i/f;


# direct methods
.method constructor <init>(Lcom/keniu/security/i/f;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/keniu/security/i/g;->a:Lcom/keniu/security/i/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/keniu/security/i/g;->a:Lcom/keniu/security/i/f;

    invoke-static {v0}, Lcom/keniu/security/i/f;->a(Lcom/keniu/security/i/f;)V

    .line 116
    iget-object v0, p0, Lcom/keniu/security/i/g;->a:Lcom/keniu/security/i/f;

    invoke-static {v0}, Lcom/keniu/security/i/f;->b(Lcom/keniu/security/i/f;)V

    .line 117
    iget-object v0, p0, Lcom/keniu/security/i/g;->a:Lcom/keniu/security/i/f;

    invoke-static {v0}, Lcom/keniu/security/i/f;->c(Lcom/keniu/security/i/f;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 121
    iget-object v0, p0, Lcom/keniu/security/i/g;->a:Lcom/keniu/security/i/f;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/keniu/security/i/f;->a(Lcom/keniu/security/i/f;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/keniu/security/i/g;->a:Lcom/keniu/security/i/f;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/keniu/security/i/f;->b(Lcom/keniu/security/i/f;Ljava/lang/String;)V

    goto :goto_0
.end method

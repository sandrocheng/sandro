.class final Lcom/keniu/security/software/ap;
.super Ljava/lang/Object;
.source "SoftwareManager2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/keniu/security/software/aj;


# direct methods
.method constructor <init>(Lcom/keniu/security/software/aj;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1254
    iput-object p1, p0, Lcom/keniu/security/software/ap;->b:Lcom/keniu/security/software/aj;

    iput p2, p0, Lcom/keniu/security/software/ap;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1257
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1258
    const/16 v1, 0x103

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1259
    iget v1, p0, Lcom/keniu/security/software/ap;->a:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1260
    iget-object v1, p0, Lcom/keniu/security/software/ap;->b:Lcom/keniu/security/software/aj;

    iget-object v1, v1, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    iget-object v1, v1, Lcom/keniu/security/software/SoftwareManager2;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1261
    return-void
.end method

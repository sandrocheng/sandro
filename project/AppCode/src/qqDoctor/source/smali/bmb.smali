.class final Lbmb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Ljava/io/File;

.field private synthetic b:Lkv;

.field private synthetic c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic d:Lbly;


# direct methods
.method constructor <init>(Lbly;Ljava/io/File;Lkv;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbmb;->d:Lbly;

    iput-object p2, p0, Lbmb;->a:Ljava/io/File;

    iput-object p3, p0, Lbmb;->b:Lkv;

    iput-object p4, p0, Lbmb;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lbmb;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbmb;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbmb;->d:Lbly;

    iget-object v1, p0, Lbmb;->b:Lkv;

    invoke-virtual {v0, v1}, Lbly;->l(Lkv;)V

    iget-object v0, p0, Lbmb;->d:Lbly;

    invoke-static {v0}, Lbly;->b(Lbly;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b03f4

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Lbmb;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method

.class final Lob;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lob;->a:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object p2, p0, Lob;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lob;->a:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->ar()V

    :cond_0
    iget-object v0, p0, Lob;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
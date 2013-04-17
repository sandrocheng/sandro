.class final Lapg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

.field private synthetic c:Lapf;


# direct methods
.method constructor <init>(Lapf;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;)V
    .locals 0

    iput-object p1, p0, Lapg;->c:Lapf;

    iput-object p2, p0, Lapg;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iput-object p3, p0, Lapg;->b:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lapg;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lapg;->b:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v0

    iget-object v1, p0, Lapg;->c:Lapf;

    invoke-virtual {v1}, Lapf;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    invoke-static {v0}, Lfd;->a(Z)V

    return-void
.end method

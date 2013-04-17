.class final Lapt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lapf;


# direct methods
.method constructor <init>(Lapf;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lapt;->b:Lapf;

    iput-object p2, p0, Lapt;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lapt;->b:Lapf;

    invoke-static {v0}, Lapf;->a(Lapf;)Lho;

    move-result-object v0

    invoke-virtual {v0, v1}, Lho;->a(Z)V

    iget-object v0, p0, Lapt;->b:Lapf;

    invoke-static {v0}, Lapf;->b(Lapf;)Lhh;

    move-result-object v0

    invoke-virtual {v0, v1}, Lhh;->a(Z)V

    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2}, Lov;->a(ZZZ)V

    iget-object v0, p0, Lapt;->b:Lapf;

    invoke-static {v0}, Lapf;->d(Lapf;)Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    move-result-object v0

    iget-object v1, p0, Lapt;->b:Lapf;

    invoke-static {v1}, Lapf;->c(Lapf;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0024

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Lapt;->b:Lapf;

    invoke-static {v0}, Lapf;->e(Lapf;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lapt;->b:Lapf;

    invoke-static {v1}, Lapf;->f(Lapf;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0451

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lapt;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x662f

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    return-void
.end method

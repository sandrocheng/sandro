.class public final Lcn;
.super Ls$a;


# instance fields
.field final synthetic a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)V
    .locals 0

    iput-object p1, p0, Lcn;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-direct {p0}, Ls$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcn;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-static {v0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->e(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-static {v0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Lbf;

    move-result-object v0

    iget-object v0, v0, Lbf;->b:Ljava/lang/String;

    iget-object v1, p0, Lcn;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-static {v1}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->f(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Lcom/tencent/powermanager/uilib/DIYHeaderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/powermanager/uilib/DIYHeaderView;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcn;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-static {v0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Lbf;

    move-result-object v0

    iget-object v1, p0, Lcn;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-static {v1}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->f(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Lcom/tencent/powermanager/uilib/DIYHeaderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/powermanager/uilib/DIYHeaderView;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbf;->b:Ljava/lang/String;

    iget-object v0, p0, Lcn;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-static {v0}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->e(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ls;->a()Ls;

    move-result-object v0

    iget-object v1, p0, Lcn;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-static {v1}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Lbf;

    move-result-object v1

    new-instance v2, Lco;

    invoke-direct {v2, p0}, Lco;-><init>(Lcn;)V

    invoke-virtual {v0, v1, v2}, Ls;->c(Lbf;Ls$a;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ls;->a()Ls;

    move-result-object v0

    iget-object v1, p0, Lcn;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    invoke-static {v1}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->b(Lcom/tencent/powermanager/ui/DIYSaveModeActivity;)Lbf;

    move-result-object v1

    new-instance v2, Lcp;

    invoke-direct {v2, p0}, Lcp;-><init>(Lcn;)V

    invoke-virtual {v0, v1, v2}, Ls;->a(Lbf;Ls$a;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    iget-object v1, p0, Lcn;->a:Lcom/tencent/powermanager/ui/DIYSaveModeActivity;

    const v2, 0x7f06005b

    invoke-virtual {v1, v2}, Lcom/tencent/powermanager/ui/DIYSaveModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lp;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

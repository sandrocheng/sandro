.class public Lcom/tencent/powermanager/ui/GuideActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/powermanager/ui/GuideActivity$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/support/v4/view/ViewPager;

.field private c:Lcom/tencent/powermanager/ui/GuideActivity$a;

.field private d:[I

.field private e:Ljava/lang/String;

.field private f:Landroid/widget/Button;

.field private g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/GuideActivity;->a:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/powermanager/ui/GuideActivity;->b:Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/tencent/powermanager/ui/GuideActivity;->c:Lcom/tencent/powermanager/ui/GuideActivity$a;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f030023

    aput v2, v0, v1

    iput-object v0, p0, Lcom/tencent/powermanager/ui/GuideActivity;->d:[I

    const-string v0, "<font color=\"#ffffff\"><a href=\'http://fwd.3g.qq.com:8080/forward.jsp?bid=908\'>%s</a></font>"

    iput-object v0, p0, Lcom/tencent/powermanager/ui/GuideActivity;->e:Ljava/lang/String;

    new-instance v0, Lcq;

    invoke-direct {v0}, Lcq;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/GuideActivity;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/tencent/powermanager/ui/GuideActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/ui/GuideActivity;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/powermanager/ui/GuideActivity;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/ui/GuideActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/powermanager/ui/GuideActivity;->finish()V

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v0

    invoke-virtual {v0}, Lr;->B()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v8}, Lcom/tencent/powermanager/ui/GuideActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/ui/GuideActivity;->setContentView(I)V

    new-instance v0, Lcom/tencent/powermanager/ui/GuideActivity$a;

    invoke-direct {v0, p0, v1}, Lcom/tencent/powermanager/ui/GuideActivity$a;-><init>(Lcom/tencent/powermanager/ui/GuideActivity;B)V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/GuideActivity;->c:Lcom/tencent/powermanager/ui/GuideActivity$a;

    const v0, 0x7f08007b

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/ui/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/tencent/powermanager/ui/GuideActivity;->b:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/tencent/powermanager/ui/GuideActivity;->b:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/tencent/powermanager/ui/GuideActivity;->c:Lcom/tencent/powermanager/ui/GuideActivity$a;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/tencent/powermanager/ui/GuideActivity;->b:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/tencent/powermanager/ui/GuideActivity;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/ui/GuideActivity;->a:Ljava/util/List;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/powermanager/ui/GuideActivity;->d:[I

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget v5, v3, v0

    iget-object v6, p0, Lcom/tencent/powermanager/ui/GuideActivity;->a:Ljava/util/List;

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/powermanager/ui/GuideActivity;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v2, 0x7f08007c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/powermanager/ui/GuideActivity;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/powermanager/ui/GuideActivity;->e:Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/Object;

    const v3, 0x7f060097

    invoke-virtual {p0, v3}, Lcom/tencent/powermanager/ui/GuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/powermanager/ui/GuideActivity;->e:Ljava/lang/String;

    const v0, 0x7f0600a3

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/ui/GuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "<br>"

    aput-object v3, v2, v1

    iget-object v1, p0, Lcom/tencent/powermanager/ui/GuideActivity;->e:Ljava/lang/String;

    aput-object v1, v2, v8

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    iget-object v0, p0, Lcom/tencent/powermanager/ui/GuideActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v0

    invoke-virtual {v0}, Lr;->A()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/ui/GuideActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/powermanager/ui/GuideActivity;->finish()V

    :cond_0
    return-void
.end method

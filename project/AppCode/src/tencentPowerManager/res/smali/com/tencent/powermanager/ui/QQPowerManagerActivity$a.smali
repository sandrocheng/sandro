.class final Lcom/tencent/powermanager/ui/QQPowerManagerActivity$a;
.super Landroid/support/v4/view/PagerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/powermanager/ui/QQPowerManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/powermanager/ui/QQPowerManagerActivity;


# direct methods
.method private constructor <init>(Lcom/tencent/powermanager/ui/QQPowerManagerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity$a;->a:Lcom/tencent/powermanager/ui/QQPowerManagerActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/powermanager/ui/QQPowerManagerActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/powermanager/ui/QQPowerManagerActivity$a;-><init>(Lcom/tencent/powermanager/ui/QQPowerManagerActivity;)V

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity$a;->a:Lcom/tencent/powermanager/ui/QQPowerManagerActivity;

    invoke-static {v0}, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->b(Lcom/tencent/powermanager/ui/QQPowerManagerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity$a;->a:Lcom/tencent/powermanager/ui/QQPowerManagerActivity;

    invoke-static {v0}, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->b(Lcom/tencent/powermanager/ui/QQPowerManagerActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity$a;->a:Lcom/tencent/powermanager/ui/QQPowerManagerActivity;

    invoke-static {v0}, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->b(Lcom/tencent/powermanager/ui/QQPowerManagerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity$a;->a:Lcom/tencent/powermanager/ui/QQPowerManagerActivity;

    invoke-static {v0}, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->b(Lcom/tencent/powermanager/ui/QQPowerManagerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/tencent/powermanager/ui/QQPowerManagerActivity$a;->a:Lcom/tencent/powermanager/ui/QQPowerManagerActivity;

    invoke-static {v0}, Lcom/tencent/powermanager/ui/QQPowerManagerActivity;->b(Lcom/tencent/powermanager/ui/QQPowerManagerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

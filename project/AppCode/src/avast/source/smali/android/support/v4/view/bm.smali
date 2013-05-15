.class Landroid/support/v4/view/bm;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


# instance fields
.field final synthetic a:Landroid/support/v4/view/ViewPager;


# direct methods
.method private constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 2687
    iput-object p1, p0, Landroid/support/v4/view/bm;->a:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/bd;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2687
    invoke-direct {p0, p1}, Landroid/support/v4/view/bm;-><init>(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2690
    iget-object v0, p0, Landroid/support/v4/view/bm;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->d()V

    .line 2691
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 2694
    iget-object v0, p0, Landroid/support/v4/view/bm;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->d()V

    .line 2695
    return-void
.end method

.class public Lcom/ijinshan/cleaner/adapter/CustomTabHost;
.super Landroid/widget/TabHost;
.source "CustomTabHost.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method private a()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/ijinshan/cleaner/adapter/CustomTabHost;->a:I

    return v0
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/ijinshan/cleaner/adapter/CustomTabHost;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ijinshan/cleaner/adapter/CustomTabHost;->a:I

    .line 35
    invoke-super {p0, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 36
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 69
    return-void
.end method

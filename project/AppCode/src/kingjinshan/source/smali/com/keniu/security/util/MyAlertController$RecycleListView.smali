.class public Lcom/keniu/security/util/MyAlertController$RecycleListView;
.super Landroid/widget/ListView;
.source "MyAlertController.java"


# instance fields
.field a:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 695
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 692
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/util/MyAlertController$RecycleListView;->a:Z

    .line 696
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 699
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 692
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/util/MyAlertController$RecycleListView;->a:Z

    .line 700
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 703
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 692
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/util/MyAlertController$RecycleListView;->a:Z

    .line 704
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 707
    iget-boolean v0, p0, Lcom/keniu/security/util/MyAlertController$RecycleListView;->a:Z

    return v0
.end method

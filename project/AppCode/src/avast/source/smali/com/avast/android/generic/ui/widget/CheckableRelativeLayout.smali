.class public Lcom/avast/android/generic/ui/widget/CheckableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "CheckableRelativeLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final a:[I


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/avast/android/generic/ui/widget/CheckableRelativeLayout;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/generic/ui/widget/CheckableRelativeLayout;->b:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/generic/ui/widget/CheckableRelativeLayout;->b:Z

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/generic/ui/widget/CheckableRelativeLayout;->b:Z

    .line 29
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/avast/android/generic/ui/widget/CheckableRelativeLayout;->b:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter

    .prologue
    .line 49
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 50
    iget-boolean v1, p0, Lcom/avast/android/generic/ui/widget/CheckableRelativeLayout;->b:Z

    if-eqz v1, :cond_0

    .line 51
    sget-object v1, Lcom/avast/android/generic/ui/widget/CheckableRelativeLayout;->a:[I

    invoke-static {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckableRelativeLayout;->mergeDrawableStates([I[I)[I

    .line 54
    :cond_0
    return-object v0
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/avast/android/generic/ui/widget/CheckableRelativeLayout;->b:Z

    .line 34
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/widget/CheckableRelativeLayout;->refreshDrawableState()V

    .line 35
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/avast/android/generic/ui/widget/CheckableRelativeLayout;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/widget/CheckableRelativeLayout;->setChecked(Z)V

    .line 45
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

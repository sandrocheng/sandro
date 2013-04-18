.class public Lcom/keniu/security/util/CustomCheckBoxPreference;
.super Lcom/ijinshan/kpref/CheckBoxPreference;
.source "CustomCheckBoxPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/keniu/security/util/CustomCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/ijinshan/kpref/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lcom/keniu/security/util/CustomCheckBoxPreference;->c(I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Landroid/view/View;)V

    .line 33
    return-void
.end method

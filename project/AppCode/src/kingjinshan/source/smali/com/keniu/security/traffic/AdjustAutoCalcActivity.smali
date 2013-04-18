.class public Lcom/keniu/security/traffic/AdjustAutoCalcActivity;
.super Lcom/keniu/security/util/BasePreferenceActivity;
.source "AdjustAutoCalcActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/n;


# instance fields
.field private a:Lcom/ijinshan/kpref/CheckBoxPreference;

.field private b:Lcom/ijinshan/kpref/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/keniu/security/util/BasePreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;)Z
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0b02c1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    invoke-virtual {p1}, Lcom/ijinshan/kpref/Preference;->A()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b02c2

    invoke-virtual {p0, v1}, Lcom/keniu/security/traffic/AdjustAutoCalcActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/keniu/security/traffic/AdjustAutoCalcActivity;->a:Lcom/ijinshan/kpref/CheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V

    .line 51
    iget-object v0, p0, Lcom/keniu/security/traffic/AdjustAutoCalcActivity;->b:Lcom/ijinshan/kpref/CheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V

    .line 52
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 54
    iput v2, v0, Lcom/keniu/security/traffic/y;->v:I

    .line 55
    invoke-virtual {v0, p0, v4}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 71
    :cond_0
    :goto_0
    return v2

    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/ijinshan/kpref/Preference;->A()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b02c3

    invoke-virtual {p0, v1}, Lcom/keniu/security/traffic/AdjustAutoCalcActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/keniu/security/traffic/AdjustAutoCalcActivity;->a:Lcom/ijinshan/kpref/CheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V

    .line 62
    iget-object v0, p0, Lcom/keniu/security/traffic/AdjustAutoCalcActivity;->b:Lcom/ijinshan/kpref/CheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V

    .line 63
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 65
    iput v3, v0, Lcom/keniu/security/traffic/y;->v:I

    .line 66
    invoke-virtual {v0, p0, v4}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    const v0, 0x7f050011

    invoke-super {p0, p1, v0}, Lcom/keniu/security/util/BasePreferenceActivity;->a(Landroid/os/Bundle;I)V

    .line 23
    const v0, 0x7f030101

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/AdjustAutoCalcActivity;->setContentView(I)V

    .line 24
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/AdjustAutoCalcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b047b

    invoke-virtual {p0, v1}, Lcom/keniu/security/traffic/AdjustAutoCalcActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/AdjustAutoCalcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    const v0, 0x7f0b02c2

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/AdjustAutoCalcActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/AdjustAutoCalcActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/CheckBoxPreference;

    iput-object v0, p0, Lcom/keniu/security/traffic/AdjustAutoCalcActivity;->a:Lcom/ijinshan/kpref/CheckBoxPreference;

    .line 29
    iget-object v0, p0, Lcom/keniu/security/traffic/AdjustAutoCalcActivity;->a:Lcom/ijinshan/kpref/CheckBoxPreference;

    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Lcom/ijinshan/kpref/n;)V

    .line 30
    const v0, 0x7f0b02c3

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/AdjustAutoCalcActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/AdjustAutoCalcActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kpref/CheckBoxPreference;

    iput-object v0, p0, Lcom/keniu/security/traffic/AdjustAutoCalcActivity;->b:Lcom/ijinshan/kpref/CheckBoxPreference;

    .line 31
    iget-object v0, p0, Lcom/keniu/security/traffic/AdjustAutoCalcActivity;->b:Lcom/ijinshan/kpref/CheckBoxPreference;

    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Lcom/ijinshan/kpref/n;)V

    .line 32
    invoke-virtual {p0}, Lcom/keniu/security/traffic/AdjustAutoCalcActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 34
    iget v0, v0, Lcom/keniu/security/traffic/y;->v:I

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/keniu/security/traffic/AdjustAutoCalcActivity;->a:Lcom/ijinshan/kpref/CheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V

    .line 36
    iget-object v0, p0, Lcom/keniu/security/traffic/AdjustAutoCalcActivity;->b:Lcom/ijinshan/kpref/CheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V

    .line 42
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/AdjustAutoCalcActivity;->a:Lcom/ijinshan/kpref/CheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V

    .line 39
    iget-object v0, p0, Lcom/keniu/security/traffic/AdjustAutoCalcActivity;->b:Lcom/ijinshan/kpref/CheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V

    goto :goto_0
.end method

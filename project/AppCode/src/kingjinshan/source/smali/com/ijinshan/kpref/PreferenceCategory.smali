.class public Lcom/ijinshan/kpref/PreferenceCategory;
.super Lcom/ijinshan/kpref/PreferenceGroup;
.source "PreferenceCategory.java"


# static fields
.field private static final o:Ljava/lang/String; = "PreferenceCategory"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ijinshan/kpref/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    const v0, 0x101008c

    invoke-direct {p0, p1, p2, v0}, Lcom/ijinshan/kpref/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/ijinshan/kpref/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method protected final a(Lcom/ijinshan/kpref/Preference;)Z
    .locals 2
    .parameter

    .prologue
    .line 43
    instance-of v0, p1, Lcom/ijinshan/kpref/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a PreferenceCategory directly to a PreferenceCategory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/PreferenceGroup;->a(Lcom/ijinshan/kpref/Preference;)Z

    move-result v0

    return v0
.end method

.method public final x()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

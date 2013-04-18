.class final Lcom/keniu/security/commumgr/f;
.super Ljava/lang/Object;
.source "CommuMgrSettingActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/m;


# instance fields
.field final synthetic a:Lcom/ijinshan/kpref/ListPreference;

.field final synthetic b:Lcom/keniu/security/commumgr/CommuMgrSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/commumgr/CommuMgrSettingActivity;Lcom/ijinshan/kpref/ListPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/keniu/security/commumgr/f;->b:Lcom/keniu/security/commumgr/CommuMgrSettingActivity;

    iput-object p2, p0, Lcom/keniu/security/commumgr/f;->a:Lcom/ijinshan/kpref/ListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 50
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 52
    iget-object v1, p0, Lcom/keniu/security/commumgr/f;->a:Lcom/ijinshan/kpref/ListPreference;

    invoke-virtual {v1}, Lcom/ijinshan/kpref/ListPreference;->o()[Ljava/lang/CharSequence;

    move-result-object v1

    move v2, v6

    .line 53
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 54
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v0, v3, :cond_1

    move v0, v2

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/keniu/security/commumgr/f;->a:Lcom/ijinshan/kpref/ListPreference;

    iget-object v2, p0, Lcom/keniu/security/commumgr/f;->b:Lcom/keniu/security/commumgr/CommuMgrSettingActivity;

    const v3, 0x7f0b0461

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/keniu/security/commumgr/f;->a:Lcom/ijinshan/kpref/ListPreference;

    invoke-virtual {v5}, Lcom/ijinshan/kpref/ListPreference;->m()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v0, v5, v0

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/keniu/security/commumgr/CommuMgrSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ijinshan/kpref/ListPreference;->a(Ljava/lang/CharSequence;)V

    .line 60
    return v7

    .line 53
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

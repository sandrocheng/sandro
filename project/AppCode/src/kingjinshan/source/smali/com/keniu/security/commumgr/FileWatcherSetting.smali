.class public Lcom/keniu/security/commumgr/FileWatcherSetting;
.super Lcom/keniu/security/util/BasePreferenceActivity;
.source "FileWatcherSetting.java"

# interfaces
.implements Lcom/ijinshan/kpref/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/keniu/security/util/BasePreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-static {}, Lcom/keniu/security/i/o;->a()Lcom/keniu/security/i/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/i/o;->c()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/FileWatcherSetting;->requestWindowFeature(I)Z

    .line 20
    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/FileWatcherSetting;->setRequestedOrientation(I)V

    .line 21
    const v0, 0x7f050002

    invoke-super {p0, p1, v0}, Lcom/keniu/security/util/BasePreferenceActivity;->a(Landroid/os/Bundle;I)V

    .line 23
    const-string v0, "isFileDownWatcherOn"

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/FileWatcherSetting;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/Preference;->a(Lcom/ijinshan/kpref/m;)V

    .line 25
    const-string v0, "isFileInstWatcherOn"

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/FileWatcherSetting;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/Preference;->a(Lcom/ijinshan/kpref/m;)V

    .line 27
    const-string v0, "isFileOpenWatcherOn"

    invoke-virtual {p0, v0}, Lcom/keniu/security/commumgr/FileWatcherSetting;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/Preference;->a(Lcom/ijinshan/kpref/m;)V

    .line 30
    return-void
.end method

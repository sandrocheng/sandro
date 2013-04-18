.class final Lcom/keniu/security/process/v;
.super Ljava/lang/Thread;
.source "ProcessWhiteSettingActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/process/ProcessWhiteSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/process/ProcessWhiteSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/keniu/security/process/v;->a:Lcom/keniu/security/process/ProcessWhiteSettingActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/keniu/security/process/v;->a:Lcom/keniu/security/process/ProcessWhiteSettingActivity;

    iget-object v1, v1, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->f:Lcom/keniu/security/a;

    invoke-virtual {v1}, Lcom/keniu/security/a;->H()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/keniu/security/process/v;->a:Lcom/keniu/security/process/ProcessWhiteSettingActivity;

    iget-object v1, v1, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->f:Lcom/keniu/security/a;

    invoke-virtual {v1}, Lcom/keniu/security/a;->I()V

    .line 63
    const-string v1, "#com.baidu.input"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, "#com.google.android.inputmethod.pinyin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, "#com.tencent.qqpinyin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, "#com.sohu.inputmethod.sogou"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, "#com.cootek.smartinputv5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, "#com.iflytek.inputmethod"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, "#com.android.deskclock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, "#com.android.inputmethod.latin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, "#com.ijinshan.kbatterydoctor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "#com.ijinshan.duba"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Lcom/keniu/security/process/v;->a:Lcom/keniu/security/process/ProcessWhiteSettingActivity;

    iget-object v1, v1, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->f:Lcom/keniu/security/a;

    invoke-virtual {v1}, Lcom/keniu/security/a;->J()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/keniu/security/process/v;->a:Lcom/keniu/security/process/ProcessWhiteSettingActivity;

    iget-object v1, v1, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->f:Lcom/keniu/security/a;

    invoke-virtual {v1}, Lcom/keniu/security/a;->G()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/keniu/security/process/v;->a:Lcom/keniu/security/process/ProcessWhiteSettingActivity;

    iget-object v1, v1, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->f:Lcom/keniu/security/a;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/keniu/security/a;->a(Ljava/lang/String;)V

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/process/v;->a:Lcom/keniu/security/process/ProcessWhiteSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->a(Lcom/keniu/security/process/ProcessWhiteSettingActivity;)V

    .line 84
    return-void
.end method

.class public Lho;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lho$a;
    }
.end annotation


# static fields
.field public static a:I

.field private static c:Lho;


# instance fields
.field public b:Z

.field private d:Landroid/content/Context;

.field private e:Landroid/content/SharedPreferences;

.field private f:Landroid/content/SharedPreferences$Editor;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lho;->c:Lho;

    const/16 v0, 0x55

    sput v0, Lho;->a:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lho;->d:Landroid/content/Context;

    const-string v0, "last_clear_icon_cache_time"

    iput-object v0, p0, Lho;->g:Ljava/lang/String;

    const-string v0, "last_clear_ad_cache_time"

    iput-object v0, p0, Lho;->h:Ljava/lang/String;

    iput-boolean v2, p0, Lho;->i:Z

    iput-boolean v2, p0, Lho;->b:Z

    iput-object p1, p0, Lho;->d:Landroid/content/Context;

    iget-object v0, p0, Lho;->d:Landroid/content/Context;

    const-string v1, "SettingInfo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private P(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "gbk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lho;->d:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/tencent/tccdb/TccCryptor;->encrypt(Landroid/content/Context;[B[B)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method private Q(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/tmsecure/utils/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lho;->d:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/tencent/tccdb/TccCryptor;->decrypt(Landroid/content/Context;[B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    :try_start_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "gbk"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public static a()Lho;
    .locals 3

    sget-object v0, Lho;->c:Lho;

    if-nez v0, :cond_1

    const-class v1, Lho;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lho;->c:Lho;

    if-nez v0, :cond_0

    new-instance v0, Lho;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lho;-><init>(Landroid/content/Context;)V

    sput-object v0, Lho;->c:Lho;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lho;->c:Lho;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static au()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Lhg;

    invoke-direct {v2}, Lhg;-><init>()V

    iget-object v2, v2, Lhg;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method private declared-synchronized dR()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "secure_service_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "secure_message_content"

    iget-object v2, p0, Lho;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b04e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "PrivacyLoginPasswordType"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final A(J)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "report_property_valid_end_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final A(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sim_card_info_province"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final A(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "notificationbar_remind"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final B()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "secure_message_title"

    iget-object v2, p0, Lho;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b045d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final B(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "desk_assistance_position_x"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final B(J)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_ram_percent_after_accelerate"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final B(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sim_card_info_city"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final B(Z)V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pickproof_qq_bind_guide"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pickproof_new"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final C()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "secure_call_notice_body"

    iget-object v2, p0, Lho;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b04ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final C(I)V
    .locals 2

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "desk_assistance_ram_useage_warning_percentage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public final C(J)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ram_not_enough_twenty_percent_dialog_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final C(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sim_card_info_carry"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final C(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pickproof_lock_new"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final D(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "desk_assistance_position_y"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final D(J)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "screen_on_report_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final D(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sim_card_info_brand"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final D(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pickproof_sim_lock_new"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final D()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "secure_contact_add_guide_show"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final E()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "secure_contact_add_guide_show"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final E(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "auto_report_intelligent_sms_max"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final E(J)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SCREEN_OFF_REPORT_TIME"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final E(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "micro_blog_login_account"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final E(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pickproof_urgent_contact_notify"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final F()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "secure_call_notice_title"

    iget-object v2, p0, Lho;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b045d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final F(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "auto_report_intelligent_sms_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final F(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "not_warn_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final F(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "screen_service"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final G()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "unread_call_logs"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final G(I)V
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "report_property_single_report_size"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public final G(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "unique_device_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final G(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "screen_sound"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final H(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "permission_init_ret"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final H(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "qqphonebook_tips_info"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final H(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "PrivacyLockSwitch"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final H()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "first_block"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final I()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "first_block"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final I(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "notication_block_init_ret"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final I(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "qqphonebook_tips_title"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final I(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "desk_assis_window"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final J()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "last_intercept_type"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final J(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_ram_percent_before_accelerate"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final J(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "qqphonebook_download_url"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final J(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "rocket_sound_open"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final K()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "month_sms_blocking_counter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final K(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "auto_report_intelligent_sms_rules"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final K(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "face_verify_switch"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final L()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "month_call_blocking_counter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final L(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "high_property_priority_keyword"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final L(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "is_show_seal"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final M()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "month_blocking_mark"

    const/high16 v2, -0x8000

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final M(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lho;->d:Landroid/content/Context;

    const-string v1, "double_call_ignore_map"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Lfu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final M(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "auto_report_intelligent_sms_flag"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final N()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "unread_secure_call_logs"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final N(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "auto_report_intelligent_sms_filter_content_flag"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final N(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lho;->d:Landroid/content/Context;

    const-string v2, "double_call_ignore_map"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {p1}, Lfu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final O(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SIM_ADPT_MOD"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final O(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "NotificationAdBlockServiceSwitch"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final O()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "service_icon_show"

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v2

    invoke-virtual {v2}, Lnp;->g()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final P(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "website_check_open"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final P()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "must_update_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final Q()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "must_update_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final Q(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "update_database_automatic_in_wifi"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final R()I
    .locals 3

    invoke-static {}, Ldi;->b()Lnp;

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "customize_filte_mode1"

    const/16 v2, 0x7f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final R(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "update_database_automatic_in_wifi_tips_need"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final S()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "app_code_version"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final S(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "startupappscanenable"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final T(Z)V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "had_show_new_version_dialog"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final T()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "is_adjedge_traffic"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final U()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "is_adjedge_traffic"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final U(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "is_mobile_antithief_immediatly_open_withqq"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final V()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "app_code_old_version"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final V(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "is_mobile_antithief_have_no_qq_open_old"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final W(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "file_safe_all_sdcards_update_finish"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final W()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "helper_tips_done"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final X()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "helper_tips_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final Y()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "last_date"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final Z()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "toast_coordinate"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "FilterMod"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final declared-synchronized a(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "secure_service_open_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lho$a;)V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "desk_assistance_min_window_style"

    invoke-virtual {p1}, Lho$a;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "autoReplyContent"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lho;->d:Landroid/content/Context;

    const-string v1, "qqwebsite"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "login_number"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "login_key"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v2, "hot_word_history"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v1, ""

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move-object v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v4, v3, -0x1

    if-ne v1, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "recycle_app_path"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final declared-synchronized a(Z)V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "OpenStatus"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lho;->h()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lho;->a(J)V

    :cond_0
    :goto_0
    invoke-static {}, Lop;->a()Lop;

    move-result-object v0

    invoke-virtual {v0}, Lop;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lho;->g()V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lho;->a(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final aA()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "report_usage_info_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final aB()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "auto_cloud_scan"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aC()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "install_app_cloud_scan"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aD()Z
    .locals 1

    iget-boolean v0, p0, Lho;->i:Z

    return v0
.end method

.method public final aE()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lho;->i:Z

    return-void
.end method

.method public final aF()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "auto_report_sms"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aG()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "wifi_approve_detect"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aH()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "first_report_sms"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aI()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "first_report_sms"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final aJ()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "first_report_calllog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aK()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "first_report_calllog"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final aL()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "get_last_get_tips_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final aM()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "update_database_automatic_in_wifi_tips_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final aN()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "get_tips_success"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aO()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "next_get_tips_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final aP()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "force_update_soft"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final aQ()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "last_update_checked"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aR()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "last_update_soft_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final aS()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "force_update_soft_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final aT()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "force_update_soft_text"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final aU()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "first_run_one_key_check"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final aV()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "first_run_one_key_check"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aW()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "first_enter_sync_assistant"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final aX()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "first_enter_sync_assistant"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aY()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "second_enter_sync_assistant"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aZ()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "first_enter_sync_assistant_and_open_wifi"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final aa()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "TrafficMonitoring_coordinate"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final ab()I
    .locals 5

    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v3, "style ui"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lho;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    const-string v3, "com.htc.launcher"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v2, "style ui"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_2
.end method

.method public final ac()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "short_call"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final ad()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "check_msg_log_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final ae()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "show_block_icon"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final af()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "smslog_show_detail"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final ag()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "registered_in_server"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final ah()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "sync_backup_all_tips"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final ai()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "sync_backup_change_tips"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final aj()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "sync_restore_all_tips"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final ak()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "sync_restore_change_tips"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final al()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "sync_backup_contactlist_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final am()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "sync_backup_contactlist_tips"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final an()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "first_visit_secure_space"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final ao()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "first_visit_secure_space"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final ap()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "data_back_secure_sms_change_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final aq()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "data_back_secure_contact_change_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final ar()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "show_about_dialog"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final as()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "show_about_dialog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final at()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "ts_useroperated_app_list"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final av()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "secure_call_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final aw()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "secure_call_notice_mode_normal"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final ax()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "secure_call_notice_mode_block"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final ay()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "shortcut_installed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final az()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "shortcut_installed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final b()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "FilterMod"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final b(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "HoldOffMod"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final b(J)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sync_backup_contactlist_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "after_secure_blocking_reply_sms"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final b(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "autoReplyStatus"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final bA()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "tip_over_time"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final bB()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "operator_over_time"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final bC()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "ignore_auto_boot_list"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bD()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "pickproof_new"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final bE()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v2, "pickproof_mobile_new"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v1}, Lho;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final bF()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v2, "pickproof_pwd_new"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v1}, Lho;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final bG()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "pickproof_lock_new"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final bH()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "pickproof_sim_lock_new"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final bI()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "pickproof_urgent_contact_notify"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final bJ()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "pickproof_imsi_new"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bK()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "screen_service"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final bL()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "screen_sound"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final bM()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "screen_style"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final bN()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "screen_save_location"

    sget-object v2, Ldx;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bO()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "screen_last_location"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bP()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "screen_format"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final bQ()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "screen_quality"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final bR()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lho;->g:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bS()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lho;->h:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bT()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v2, "pickproof_name_new"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v1}, Lho;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final bU()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "pickproof_safephone_name_new"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bV()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "pickproof_qq_bind_guide"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final bW()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "show_data_clear_tips_dialog"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final bX()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "show_data_clear_tips_dialog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final bY()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "show_software_move_tips_dialog"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final bZ()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "show_software_move_tips_dialog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final ba()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "first_enter_sync_assistant_and_open_wifi"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final bb()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "private_space_name"

    iget-object v2, p0, Lho;->d:Landroid/content/Context;

    const v3, 0x7f0b0294

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bc()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "private_space_icon"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final bd()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "private_space_call_notification"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final be()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "private_space_fake_password"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bf()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "sync_last_login_type"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final bg()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "sync_default_login_account"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bh()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lho;->d:Landroid/content/Context;

    const-string v1, "qqwebsite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "qqwebsite_auto_logout"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final bi()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "last_sync_backup_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bj()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "last_show_sync_notification_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bk()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "cache_category_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bl()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "game_cache_category_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bm()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "cache_special_category_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bn()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "cache_special_category_time_from_server"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bo()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "cache_mysoftware_update_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bp()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v2, "hot_word_history"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final bq()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "cache_expiration_day"

    const-wide/32 v2, 0x5265c00

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final br()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "cache_day_choice_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bs()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "cache_ranking_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bt()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "first_to_handup_and_reply_new"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final bu()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "first_to_handup_and_reply_new"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final bv()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "show_get_root_dialog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final bw()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "show_get_root_dialog"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final bx()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "recycle_app_path"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-object v0

    :cond_1
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final by()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "permission_monitor"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final bz()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "notificationbar_remind"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "HoldOffMod"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final c(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "secure_attention_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final c(J)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "data_back_secure_sms_change_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "private_space_password"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final c(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "OutOrInCallShower"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final cA()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "desk_assistance_ram_useage_warning_percentage"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final cB()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "desk_assistance_position_y"

    sget v2, Lgw;->b:I

    div-int/lit8 v2, v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final cC()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "time_one_key_analysis"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final cD()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "not_warn_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final cE()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "first_show_face_verify_introduce"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final cF()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "first_show_face_verify_introduce"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final cG()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "first_show_privacy_introduce"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final cH()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "face_verify_switch"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final cI()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "unique_device_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final cJ()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v2, "optimize_white_list_tips_request_time"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v3, "optimize_white_list_tips_request_time"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v2, "optimize_white_list_tips_request_time"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final cK()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "optimize_white_list_setting_tips"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final cL()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "not_push_qqphonebook"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final cM()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "not_push_qqphonebook"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final cN()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "is_show_seal"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final cO()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "qqphonebook_tips_info"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final cP()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "qqphonebook_tips_title"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final cQ()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "qqphonebook_download_url"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final cR()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "softmaket_hotword_last_refresh_timev2"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final cS()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "time_software_update_last_notify"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final cT()V
    .locals 4

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "time_software_update_last_notify"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final cU()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "auto_report_intelligent_sms_flag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final cV()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "auto_report_intelligent_sms_rules"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final cW()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "auto_report_intelligent_sms_max"

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final cX()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "auto_report_intelligent_sms_TIME"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final cY()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "last_wifi_connected_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final cZ()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "auto_report_intelligent_sms_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final ca()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "first_run_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final cb()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "software_traffic_ranking_initialized"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final cc()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "software_traffic_ranking_initialized"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final cd()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "FileSafePassword"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ce()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "PrivacySafeQQFirstSet"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final cf()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "PrivacySafeQQFirstSet"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final cg()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "PrivacySafeQQFloatingWindowFirstShow"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final ch()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "PrivacySafeQQFloatingWindowFirstShow"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final ci()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "PrivacySafeQQ"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final cj()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "PrivacyLoginPasswordType"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final ck()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "PrivacyPasswordType"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final cl()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "PrivacyPasswordType"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final cm()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "PrivacyPasswordStealthPattern"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final cn()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "PrivacyPasswordInputVibrate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final co()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "PrivacyLockSwitch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final cp()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "FirstClosePrivacyLock"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final cq()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "FirstClosePrivacyLock"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final cr()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "sim_card_info_province"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final cs()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "sim_card_info_city"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ct()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "sim_card_info_carry"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final cu()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "sim_card_info_brand"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final cv()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "desk_assis_window"

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v2

    invoke-virtual {v2}, Lnp;->h()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final cw()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "rocket_sound_open"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final cx()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "micro_blog_login_account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final cy()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "desk_assistance_position_x"

    sget v2, Lgw;->a:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final cz()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "desk_assistance_ram_useage_warning_percentage"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    sget v0, Lho;->a:I

    :cond_0
    return v0
.end method

.method public final d(I)V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "unread_call_logs"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-lez p1, :cond_0

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_intercept_type"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public final d(J)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "data_back_secure_contact_change_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "secure_message_content"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final d(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "private_secure"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final d()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "first_set_custom_mod"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final dA()Lho$a;
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "desk_assistance_min_window_style"

    sget-object v2, Lho$a;->a:Lho$a;

    invoke-virtual {v2}, Lho$a;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lho$a;->values()[Lho$a;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final dB()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "last_ram_percent_before_accelerate"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final dC()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "last_ram_percent_after_accelerate"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final dD()V
    .locals 4

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_ram_percent_after_accelerate"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final dE()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "is_mobile_antithief_immediatly_open_withqq"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final dF()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "is_mobile_antithief_have_no_qq_open_old"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final dG()Z
    .locals 5

    const/4 v4, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v2, "last_running_sdk_version"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v2, "last_running_sdk_version"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "file_safe_all_sdcards_update_finish"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "file_safe_all_sdcards_update_finish"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final dH()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "used_clean_running_software_white_list"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final dI()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "used_clean_running_software_white_list"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final dJ()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "IS_FIRST_TIME_SHOW_CONNECT_COMPUTER_MENU"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final dK()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "IS_FIRST_TIME_SHOW_CONNECT_COMPUTER_MENU"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final dL()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "is_month_update_getdata_sucess"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final dM()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "ram_not_enough_twenty_percent_dialog_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final dN()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "screen_on_report_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final dO()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "SCREEN_OFF_REPORT_TIME"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final dP()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "is_click_benchmark"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final dQ()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "is_click_benchmark"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final da()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "auto_report_intelligent_sms_filter_content_flag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final db()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "high_property_priority_keyword"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final dc()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "report_property_single_report_size"

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final dd()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "report_property_valid_end_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final de()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "use_rocket_speed_up_flag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final df()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "use_rocket_speed_up_flag"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final dg()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "showed_change_setting_pandel_flag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final dh()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "showed_change_setting_pandel_flag"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final di()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "NotificationAdBlockServiceSwitch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final dj()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "UserBlockNoticationFirstTime"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final dk()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "UserBlockNoticationFirstTime"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final dl()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "ShowNoticationNewEnterTag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final dm()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ShowNoticationNewEnterTag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final dn()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "updatepermitabfornotication"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final do()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "updatepermitabfornotication"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final dp()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "website_check_open"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final dq()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "update_database_automatic_in_wifi"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final dr()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "update_database_automatic_in_wifi_tips_need"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final ds()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "startupappscanenable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final dt()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "color_egg_weibo"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final du()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "color_egg_weibo"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final dv()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "IS_DUAL"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final dw()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "DUAL_MOD"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final dx()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "SIM_ADPT_MOD"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final dy()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "permission_init_ret"

    const/16 v2, -0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final dz()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "notication_block_init_ret"

    const/16 v2, -0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "first_set_custom_mod"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final e(I)V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "month_sms_blocking_counter"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-lez p1, :cond_0

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_intercept_type"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public final e(J)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "data_back_secure_sms_backup_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "secure_message_title"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final e(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "double_call_status"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final f(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "month_call_blocking_counter"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final f(J)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "data_back_secure_contact_backup_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "secure_call_notice_body"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final f(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "OneRingStatus"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final f()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "OpenStatus"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized g()V
    .locals 8

    const-wide/16 v6, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lho;->h()J

    move-result-wide v0

    cmp-long v2, v0, v6

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lho;->dR()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    cmp-long v4, v0, v6

    if-lez v4, :cond_0

    iget-object v4, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v5, "secure_service_time"

    add-long/2addr v0, v2

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "month_blocking_mark"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final g(J)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "report_usage_info_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "secure_call_notice_title"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final g(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "service_icon_show"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final declared-synchronized h()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "secure_service_open_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final h(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "unread_secure_call_logs"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final h(J)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "get_last_get_tips_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ts_useroperated_app_list"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final h(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "show_block_icon"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "autoReplyContent"

    iget-object v2, p0, Lho;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b04e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "customize_filte_mode1"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final i(J)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "update_database_automatic_in_wifi_tips_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_update_soft_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final i(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "registered_in_server"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "after_secure_blocking_reply_sms"

    iget-object v2, p0, Lho;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b04e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "app_code_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final j(J)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "next_get_tips_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "force_update_soft_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final j(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sync_backup_all_tips"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final k(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "app_code_old_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final k(J)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_show_sync_notification_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "force_update_soft_title"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final k(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sync_backup_change_tips"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final k()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "autoReplyStatus"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final l()J
    .locals 4

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "lastUpdateTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final l(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_date"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final l(J)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_sync_backup_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "force_update_soft_text"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final l(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sync_restore_all_tips"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final m()V
    .locals 4

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "lastUpdateTime"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final m(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "toast_coordinate"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final m(J)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "cache_category_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sync_default_login_account"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final m(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sync_restore_change_tips"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final n()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "private_space_password"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "TrafficMonitoring_coordinate"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final n(J)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "game_cache_category_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ignore_auto_boot_list"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final n(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sync_backup_contactlist_tips"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final o(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "short_call"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final o(J)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "cache_special_category_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lho;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v2, "pickproof_mobile_new"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public final o(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "install_app_cloud_scan"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final o()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "OutOrInCallShower"

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v2

    invoke-virtual {v2}, Lnp;->i()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final p(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "check_msg_log_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final p(J)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "cache_special_category_time_from_server"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pickproof_imsi_new"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final p(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "auto_cloud_scan"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final p()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "EavesdropSwitch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final q()I
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "secure_attention_mode"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final q(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "secure_call_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final q(J)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "cache_mysoftware_update_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final q(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "auto_report_sms"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final q(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v2, "pickproof_cg_sms_send_imsi"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final r(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "secure_call_notice_mode_normal"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final r(J)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "cache_day_choice_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pickproof_cg_sms_send_imsi"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final r(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "wifi_approve_detect"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final r()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "OneRingStatus"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final s()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "EavesdropSwitch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final s(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "secure_call_notice_mode_block"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final s(J)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "cache_ranking_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "screen_last_location"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final s(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "get_tips_success"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final t()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "file_safe_first_init"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final t(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "sync_last_login_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final t(J)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lho;->g:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lho;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v2, "pickproof_name_new"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public final t(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_update_checked"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final u(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "tip_over_time"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final u(J)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lho;->h:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pickproof_safephone_name_new"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final u(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "second_enter_sync_assistant"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final u()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "file_safe_first_init"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final v(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final v()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "file_safe_has_restore"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final v(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "operator_over_time"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final v(J)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "first_run_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final v(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "show_notification_bar_icon"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final w(Ljava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final w(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "screen_style"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final w(J)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "time_one_key_analysis"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final w(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "private_space_call_notification"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final w()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "file_safe_has_restore"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final x()V
    .locals 3

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "privacy_lock_first_use"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final x(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "screen_format"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final x(J)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "softmaket_hotword_last_refresh_timev2"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final x(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "private_quick_entry_display_info"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final x(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final y(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "screen_quality"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final y(J)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "auto_report_intelligent_sms_TIME"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final y(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "FileSafePassword"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final y(Z)V
    .locals 3

    iget-object v0, p0, Lho;->d:Landroid/content/Context;

    const-string v1, "qqwebsite"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "qqwebsite_auto_logout"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final y()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "privacy_lock_first_use"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final z(I)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pickproof_qq_bind_guide"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final z(J)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_wifi_connected_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final z(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "PrivacySafeQQ"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final z(Z)V
    .locals 2

    iget-object v0, p0, Lho;->f:Landroid/content/SharedPreferences$Editor;

    const-string v1, "permission_monitor"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final z()Z
    .locals 3

    iget-object v0, p0, Lho;->e:Landroid/content/SharedPreferences;

    const-string v1, "double_call_status"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

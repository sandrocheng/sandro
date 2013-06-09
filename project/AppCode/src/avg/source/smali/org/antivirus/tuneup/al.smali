.class final Lorg/antivirus/tuneup/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Lorg/antivirus/tuneup/DataPlanSettingsActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/DataPlanSettingsActivity;Landroid/widget/EditText;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/al;->c:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    iput-object p2, p0, Lorg/antivirus/tuneup/al;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lorg/antivirus/tuneup/al;->b:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lorg/antivirus/tuneup/al;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/antivirus/tuneup/al;->c:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->d(Lorg/antivirus/tuneup/DataPlanSettingsActivity;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lorg/antivirus/tuneup/al;->c:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->a(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)Lorg/antivirus/tuneup/ap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antivirus/tuneup/ap;->notifyDataSetChanged()V

    iget-object v0, p0, Lorg/antivirus/tuneup/al;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {}, Lorg/antivirus/AVSettings;->isQuotaWarningNotificationOn()Z

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lorg/antivirus/AVSettings;->setQuotaWarningNotificationOn(Z)V

    iget-object v1, p0, Lorg/antivirus/tuneup/al;->c:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    const-string v2, "data_usage_settings"

    const-string v3, "notify_about_data_usage"

    if-eqz v0, :cond_1

    const-string v0, "on"

    :goto_1
    invoke-static {v1, v2, v3, v0}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "off"

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

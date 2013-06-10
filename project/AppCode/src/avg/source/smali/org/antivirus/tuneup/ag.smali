.class final Lorg/antivirus/tuneup/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lorg/antivirus/tuneup/DataPlanSettingsActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/DataPlanSettingsActivity;III)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/ag;->d:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    iput p2, p0, Lorg/antivirus/tuneup/ag;->a:I

    iput p3, p0, Lorg/antivirus/tuneup/ag;->b:I

    iput p4, p0, Lorg/antivirus/tuneup/ag;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/antivirus/tuneup/ag;->d:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    iget v1, p0, Lorg/antivirus/tuneup/ag;->a:I

    iget-object v2, p0, Lorg/antivirus/tuneup/ag;->d:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    invoke-static {v2}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->c(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)I

    move-result v2

    iget v3, p0, Lorg/antivirus/tuneup/ag;->b:I

    iget v4, p0, Lorg/antivirus/tuneup/ag;->c:I

    iget-object v5, p0, Lorg/antivirus/tuneup/ag;->d:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    invoke-static {v5}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->d(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->a(Lorg/antivirus/tuneup/DataPlanSettingsActivity;IIIII)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lorg/antivirus/tuneup/ag;->d:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->e(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/ag;->d:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090166

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object v0, p0, Lorg/antivirus/tuneup/ag;->d:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/antivirus/tuneup/ag;->d:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09015b

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

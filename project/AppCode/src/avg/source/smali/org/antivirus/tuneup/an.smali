.class final Lorg/antivirus/tuneup/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/Spinner;

.field final synthetic c:Lorg/antivirus/tuneup/DataPlanSettingsActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/DataPlanSettingsActivity;Landroid/widget/EditText;Landroid/widget/Spinner;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/an;->c:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    iput-object p2, p0, Lorg/antivirus/tuneup/an;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lorg/antivirus/tuneup/an;->b:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/tuneup/an;->c:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->e(Lorg/antivirus/tuneup/DataPlanSettingsActivity;I)I

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/tuneup/an;->c:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    iget-object v1, p0, Lorg/antivirus/tuneup/an;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->e(Lorg/antivirus/tuneup/DataPlanSettingsActivity;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lorg/antivirus/tuneup/an;->c:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    iget-object v1, p0, Lorg/antivirus/tuneup/an;->b:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->f(Lorg/antivirus/tuneup/DataPlanSettingsActivity;I)I

    iget-object v0, p0, Lorg/antivirus/tuneup/an;->c:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->a(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)Lorg/antivirus/tuneup/ap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antivirus/tuneup/ap;->notifyDataSetChanged()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

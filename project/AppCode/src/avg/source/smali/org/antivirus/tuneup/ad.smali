.class final Lorg/antivirus/tuneup/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/tuneup/DataPlanSettingsActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/ad;->a:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/tuneup/ad;->a:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    invoke-static {v0, p2}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->g(Lorg/antivirus/tuneup/DataPlanSettingsActivity;I)I

    iget-object v0, p0, Lorg/antivirus/tuneup/ad;->a:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/DataPlanSettingsActivity;->a(Lorg/antivirus/tuneup/DataPlanSettingsActivity;)Lorg/antivirus/tuneup/ap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antivirus/tuneup/ap;->notifyDataSetChanged()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

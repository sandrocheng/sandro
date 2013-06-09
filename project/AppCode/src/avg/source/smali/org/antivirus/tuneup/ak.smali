.class final Lorg/antivirus/tuneup/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lorg/antivirus/tuneup/DataPlanSettingsActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/DataPlanSettingsActivity;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/ak;->b:Lorg/antivirus/tuneup/DataPlanSettingsActivity;

    iput-object p2, p0, Lorg/antivirus/tuneup/ak;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/tuneup/ak;->a:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/ak;->a:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_0
    return-void
.end method

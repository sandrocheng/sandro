.class final Lorg/antivirus/tuneup/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lorg/antivirus/tuneup/q;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/q;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/s;->a:Lorg/antivirus/tuneup/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/s;->a:Lorg/antivirus/tuneup/q;

    iget-object v0, v0, Lorg/antivirus/tuneup/q;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-static {v0, p2}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->d(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;I)V

    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

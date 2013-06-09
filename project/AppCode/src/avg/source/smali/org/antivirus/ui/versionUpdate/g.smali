.class final Lorg/antivirus/ui/versionUpdate/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lorg/antivirus/ui/versionUpdate/f;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/versionUpdate/f;II)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/versionUpdate/g;->c:Lorg/antivirus/ui/versionUpdate/f;

    iput p2, p0, Lorg/antivirus/ui/versionUpdate/g;->a:I

    iput p3, p0, Lorg/antivirus/ui/versionUpdate/g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/g;->c:Lorg/antivirus/ui/versionUpdate/f;

    iget-object v0, v0, Lorg/antivirus/ui/versionUpdate/f;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-static {v0}, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->f(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lorg/antivirus/ui/versionUpdate/g;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/g;->c:Lorg/antivirus/ui/versionUpdate/f;

    iget-object v0, v0, Lorg/antivirus/ui/versionUpdate/f;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-static {v0}, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->f(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lorg/antivirus/ui/versionUpdate/g;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget v0, p0, Lorg/antivirus/ui/versionUpdate/g;->b:I

    int-to-double v0, v0

    iget v2, p0, Lorg/antivirus/ui/versionUpdate/g;->a:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lorg/antivirus/ui/versionUpdate/g;->c:Lorg/antivirus/ui/versionUpdate/f;

    iget-object v1, v1, Lorg/antivirus/ui/versionUpdate/f;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-static {v1}, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->g(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

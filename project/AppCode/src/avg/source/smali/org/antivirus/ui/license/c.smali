.class final Lorg/antivirus/ui/license/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/license/LicenseEnteringActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/license/LicenseEnteringActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/license/c;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/ui/license/c;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    sget-object v1, Lorg/antivirus/license/qrreader/general/CaptureActivity;->QR_CODE_TYPES:Ljava/util/Collection;

    invoke-static {v0, v1}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->a(Lorg/antivirus/ui/license/LicenseEnteringActivity;Ljava/util/Collection;)V

    return-void
.end method

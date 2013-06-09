.class final Lorg/antivirus/tuneup/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/InstalledApp;

.field final synthetic b:Lorg/antivirus/tuneup/b;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/b;Lorg/antivirus/ui/InstalledApp;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/c;->b:Lorg/antivirus/tuneup/b;

    iput-object p2, p0, Lorg/antivirus/tuneup/c;->a:Lorg/antivirus/ui/InstalledApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/tuneup/c;->b:Lorg/antivirus/tuneup/b;

    iget-object v1, p0, Lorg/antivirus/tuneup/c;->a:Lorg/antivirus/ui/InstalledApp;

    iget-object v1, v1, Lorg/antivirus/ui/InstalledApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/antivirus/tuneup/b;->a(Ljava/lang/String;)V

    return-void
.end method

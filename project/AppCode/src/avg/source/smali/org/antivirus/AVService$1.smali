.class Lorg/antivirus/AVService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/antivirus/core/scanners/i;


# instance fields
.field final synthetic a:Lorg/antivirus/AVService;


# direct methods
.method constructor <init>(Lorg/antivirus/AVService;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/AVService$1;->a:Lorg/antivirus/AVService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanDone(Lorg/antivirus/core/scanners/g;Lorg/antivirus/core/scanners/c;)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/AVService$1;->a:Lorg/antivirus/AVService;

    invoke-static {v0, p1, p2}, Lorg/antivirus/AVService;->a(Lorg/antivirus/AVService;Lorg/antivirus/core/scanners/g;Lorg/antivirus/core/scanners/c;)V

    return-void
.end method

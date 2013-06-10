.class public final Lorg/antivirus/ui/scan/results/q;
.super Lorg/antivirus/ui/scan/results/j;


# instance fields
.field a:Lorg/antivirus/ui/scan/results/r;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/antivirus/ui/scan/results/j;-><init>(Ljava/lang/String;)V

    const v0, 0x7f09001c

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/scan/results/j;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/antivirus/ui/scan/results/r;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/antivirus/ui/scan/results/j;-><init>(Ljava/lang/String;)V

    const v0, 0x7f09001c

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/scan/results/j;->g:Ljava/lang/String;

    iput-object p2, p0, Lorg/antivirus/ui/scan/results/q;->a:Lorg/antivirus/ui/scan/results/r;

    return-void
.end method

.class public final Lorg/antivirus/ui/scan/results/b;
.super Lorg/antivirus/ui/scan/results/j;


# instance fields
.field a:Lorg/antivirus/ui/scan/results/c;

.field b:Ljava/lang/String;

.field c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lorg/antivirus/ui/scan/results/j;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/antivirus/ui/scan/results/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lorg/antivirus/ui/scan/results/b;->c:Ljava/util/ArrayList;

    const v0, 0x7f09001d

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/scan/results/j;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/antivirus/ui/scan/results/c;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lorg/antivirus/ui/scan/results/j;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/antivirus/ui/scan/results/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lorg/antivirus/ui/scan/results/b;->c:Ljava/util/ArrayList;

    const v0, 0x7f09001d

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/scan/results/j;->g:Ljava/lang/String;

    iput-object p2, p0, Lorg/antivirus/ui/scan/results/b;->a:Lorg/antivirus/ui/scan/results/c;

    iput-object p3, p0, Lorg/antivirus/ui/scan/results/b;->b:Ljava/lang/String;

    iput-object p4, p0, Lorg/antivirus/ui/scan/results/b;->c:Ljava/util/ArrayList;

    return-void
.end method

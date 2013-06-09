.class public Lorg/antivirus/ui/scan/results/j;
.super Ljava/lang/Object;


# instance fields
.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Z

.field g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antivirus/ui/scan/results/j;->f:Z

    iput-object p1, p0, Lorg/antivirus/ui/scan/results/j;->d:Ljava/lang/String;

    return-void
.end method

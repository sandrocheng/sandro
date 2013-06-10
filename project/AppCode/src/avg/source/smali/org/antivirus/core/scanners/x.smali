.class public final Lorg/antivirus/core/scanners/x;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;

.field public c:Ljava/util/List;

.field public d:Ljava/util/List;

.field public e:Ljava/util/List;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I

.field final synthetic k:Lorg/antivirus/core/scanners/w;


# direct methods
.method public constructor <init>(Lorg/antivirus/core/scanners/w;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lorg/antivirus/core/scanners/x;->k:Lorg/antivirus/core/scanners/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/antivirus/core/scanners/x;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/scanners/x;->b:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/scanners/x;->c:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/scanners/x;->d:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/scanners/x;->e:Ljava/util/List;

    iput-object p3, p0, Lorg/antivirus/core/scanners/x;->h:Ljava/lang/String;

    return-void
.end method

.class public Lcom/antivirus/core/g/a;
.super Ljava/util/LinkedHashMap;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/16 v0, 0x64

    const/high16 v1, 0x3f40

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput p1, p0, Lcom/antivirus/core/g/a;->a:I

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/antivirus/core/g/a;->size()I

    move-result v0

    iget v1, p0, Lcom/antivirus/core/g/a;->a:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public final Lcom/b/a/et;
.super Ljava/util/AbstractList;
.source "LazyStringArrayList.java"

# interfaces
.implements Lcom/b/a/eu;
.implements Ljava/util/RandomAccess;


# static fields
.field public static final a:Lcom/b/a/eu;


# instance fields
.field private final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/b/a/gl;

    new-instance v1, Lcom/b/a/et;

    invoke-direct {v1}, Lcom/b/a/et;-><init>()V

    invoke-direct {v0, v1}, Lcom/b/a/gl;-><init>(Lcom/b/a/eu;)V

    sput-object v0, Lcom/b/a/et;->a:Lcom/b/a/eu;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/et;->b:Ljava/util/List;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/b/a/et;->b:Ljava/util/List;

    .line 77
    return-void
.end method

.method private a(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/b/a/et;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    invoke-static {v0}, Lcom/b/a/et;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 149
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 150
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    check-cast p0, Lcom/b/a/i;

    invoke-virtual {p0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 81
    iget-object v1, p0, Lcom/b/a/et;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 82
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 83
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 90
    :goto_0
    return-object v1

    .line 85
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 86
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/b/a/et;->b:Ljava/util/List;

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 90
    goto :goto_0
.end method

.method private b(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/b/a/et;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 108
    iget v0, p0, Lcom/b/a/et;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/et;->modCount:I

    .line 109
    return-void
.end method

.method private c(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/b/a/et;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 121
    iget v1, p0, Lcom/b/a/et;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/et;->modCount:I

    .line 122
    invoke-static {v0}, Lcom/b/a/et;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/b/a/i;
    .locals 2
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/b/a/et;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 139
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 140
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/b/a/et;->b:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 144
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method public final a(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/b/a/et;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget v0, p0, Lcom/b/a/et;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/et;->modCount:I

    .line 134
    return-void
.end method

.method public final bridge synthetic add(ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/b/a/et;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/b/a/et;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/et;->modCount:I

    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/b/a/et;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 114
    iget v1, p0, Lcom/b/a/et;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/et;->modCount:I

    .line 115
    return v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/b/a/et;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 127
    iget v0, p0, Lcom/b/a/et;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/et;->modCount:I

    .line 128
    return-void
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 63
    iget-object v1, p0, Lcom/b/a/et;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    :goto_0
    return-object v1

    :cond_0
    check-cast v1, Lcom/b/a/i;

    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/b/a/et;->b:Ljava/util/List;

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/b/a/et;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/b/a/et;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/et;->modCount:I

    invoke-static {v0}, Lcom/b/a/et;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/b/a/et;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/et;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/b/a/et;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

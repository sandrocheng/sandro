.class public Lcom/google/a/y;
.super Ljava/util/AbstractList;
.source "LazyStringArrayList.java"

# interfaces
.implements Lcom/google/a/z;
.implements Ljava/util/RandomAccess;


# static fields
.field public static final a:Lcom/google/a/z;


# instance fields
.field private final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/google/a/am;

    new-instance v1, Lcom/google/a/y;

    invoke-direct {v1}, Lcom/google/a/y;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/a/am;-><init>(Lcom/google/a/z;)V

    sput-object v0, Lcom/google/a/y;->a:Lcom/google/a/z;

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

    iput-object v0, p0, Lcom/google/a/y;->b:Ljava/util/List;

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

    iput-object v0, p0, Lcom/google/a/y;->b:Ljava/util/List;

    .line 77
    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 149
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 150
    check-cast p1, Ljava/lang/String;

    .line 152
    :goto_0
    return-object p1

    :cond_0
    check-cast p1, Lcom/google/a/c;

    invoke-virtual {p1}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/a/y;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 82
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 83
    check-cast v0, Ljava/lang/String;

    .line 90
    :goto_0
    return-object v0

    .line 85
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 86
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/google/a/y;->b:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 90
    goto :goto_0
.end method

.method public a(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/a/y;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    invoke-direct {p0, v0}, Lcom/google/a/y;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/c;)V
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/a/y;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget v0, p0, Lcom/google/a/y;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/y;->modCount:I

    .line 134
    return-void
.end method

.method public synthetic add(ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/a/y;->b(ILjava/lang/String;)V

    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/a/y;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 114
    iget v1, p0, Lcom/google/a/y;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/a/y;->modCount:I

    .line 115
    return v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/a/y;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 121
    iget v1, p0, Lcom/google/a/y;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/a/y;->modCount:I

    .line 122
    invoke-direct {p0, v0}, Lcom/google/a/y;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/a/y;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 108
    iget v0, p0, Lcom/google/a/y;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/y;->modCount:I

    .line 109
    return-void
.end method

.method public c(I)Lcom/google/a/c;
    .locals 2
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/a/y;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 139
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 140
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/google/a/y;->b:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 144
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/a/y;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 127
    iget v0, p0, Lcom/google/a/y;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/y;->modCount:I

    .line 128
    return-void
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/google/a/y;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/google/a/y;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/a/y;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/a/y;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

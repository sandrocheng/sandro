.class public Lking/org/apache/commons/codec/StringEncoderComparator;
.super Ljava/lang/Object;
.source "StringEncoderComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final stringEncoder:Lking/org/apache/commons/codec/StringEncoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lking/org/apache/commons/codec/StringEncoderComparator;->stringEncoder:Lking/org/apache/commons/codec/StringEncoder;

    .line 47
    return-void
.end method

.method public constructor <init>(Lking/org/apache/commons/codec/StringEncoder;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lking/org/apache/commons/codec/StringEncoderComparator;->stringEncoder:Lking/org/apache/commons/codec/StringEncoder;

    .line 57
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Lking/org/apache/commons/codec/StringEncoderComparator;->stringEncoder:Lking/org/apache/commons/codec/StringEncoder;

    invoke-interface {v0, p1}, Lking/org/apache/commons/codec/StringEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 79
    iget-object v1, p0, Lking/org/apache/commons/codec/StringEncoderComparator;->stringEncoder:Lking/org/apache/commons/codec/StringEncoder;

    invoke-interface {v1, p2}, Lking/org/apache/commons/codec/StringEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Comparable;

    .line 80
    invoke-interface {v0, p0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I
    :try_end_0
    .catch Lking/org/apache/commons/codec/EncoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 84
    :goto_0
    return v0

    .line 82
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

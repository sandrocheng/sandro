.class final Lcom/b/a/ge;
.super Ljava/lang/Object;
.source "TextFormat.java"


# static fields
.field private static final i:Ljava/util/regex/Pattern;

.field private static final j:Ljava/util/regex/Pattern;

.field private static final k:Ljava/util/regex/Pattern;

.field private static final l:Ljava/util/regex/Pattern;

.field private static final m:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:Ljava/util/regex/Matcher;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x2

    .line 546
    const-string v0, "(\\s|(#.*$))++"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/b/a/ge;->i:Ljava/util/regex/Pattern;

    .line 548
    const-string v0, "[a-zA-Z_][0-9a-zA-Z_+-]*+|[.]?[0-9+-][0-9a-zA-Z_.+-]*+|\"([^\"\n\\\\]|\\\\.)*+(\"|\\\\?$)|\'([^\'\n\\\\]|\\\\.)*+(\'|\\\\?$)"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/b/a/ge;->j:Ljava/util/regex/Pattern;

    .line 555
    const-string v0, "-?inf(inity)?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/b/a/ge;->k:Ljava/util/regex/Pattern;

    .line 558
    const-string v0, "-?inf(inity)?f?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/b/a/ge;->l:Ljava/util/regex/Pattern;

    .line 561
    const-string v0, "nanf?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/b/a/ge;->m:Ljava/util/regex/Pattern;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 527
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/ge;-><init>(Ljava/lang/CharSequence;B)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    iput v0, p0, Lcom/b/a/ge;->d:I

    .line 536
    iput v0, p0, Lcom/b/a/ge;->e:I

    .line 537
    iput v0, p0, Lcom/b/a/ge;->f:I

    .line 541
    iput v0, p0, Lcom/b/a/ge;->g:I

    .line 542
    iput v0, p0, Lcom/b/a/ge;->h:I

    .line 567
    iput-object p1, p0, Lcom/b/a/ge;->a:Ljava/lang/CharSequence;

    .line 568
    sget-object v0, Lcom/b/a/ge;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ge;->b:Ljava/util/regex/Matcher;

    .line 569
    invoke-direct {p0}, Lcom/b/a/ge;->n()V

    .line 570
    invoke-direct {p0}, Lcom/b/a/ge;->m()V

    .line 571
    return-void
.end method

.method private a(Ljava/lang/NumberFormatException;)Lcom/b/a/gb;
    .locals 2
    .parameter

    .prologue
    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t parse integer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/ge;->c(Ljava/lang/String;)Lcom/b/a/gb;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 838
    iget-object v0, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 840
    :goto_0
    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    .line 841
    const-string v0, "Expected string."

    invoke-virtual {p0, v0}, Lcom/b/a/ge;->c(Ljava/lang/String;)Lcom/b/a/gb;

    move-result-object v0

    throw v0

    :cond_0
    move v0, v1

    .line 838
    goto :goto_0

    .line 844
    :cond_1
    iget-object v1, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v0, :cond_3

    .line 846
    :cond_2
    const-string v0, "String missing ending quote."

    invoke-virtual {p0, v0}, Lcom/b/a/ge;->c(Ljava/lang/String;)Lcom/b/a/gb;

    move-result-object v0

    throw v0

    .line 850
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 852
    invoke-static {v0}, Lcom/b/a/fy;->a(Ljava/lang/CharSequence;)Lcom/b/a/i;

    move-result-object v0

    .line 853
    invoke-direct {p0}, Lcom/b/a/ge;->m()V

    .line 854
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/b/a/ga; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    return-void

    .line 855
    :catch_0
    move-exception v0

    .line 856
    invoke-virtual {v0}, Lcom/b/a/ga;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/ge;->c(Ljava/lang/String;)Lcom/b/a/gb;

    move-result-object v0

    throw v0
.end method

.method private b(Ljava/lang/NumberFormatException;)Lcom/b/a/gb;
    .locals 2
    .parameter

    .prologue
    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t parse number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/ge;->c(Ljava/lang/String;)Lcom/b/a/gb;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .locals 3

    .prologue
    .line 580
    iget v0, p0, Lcom/b/a/ge;->e:I

    iput v0, p0, Lcom/b/a/ge;->g:I

    .line 581
    iget v0, p0, Lcom/b/a/ge;->f:I

    iput v0, p0, Lcom/b/a/ge;->h:I

    .line 584
    :goto_0
    iget v0, p0, Lcom/b/a/ge;->d:I

    iget-object v1, p0, Lcom/b/a/ge;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 585
    iget-object v0, p0, Lcom/b/a/ge;->a:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/b/a/ge;->d:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 586
    iget v0, p0, Lcom/b/a/ge;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/ge;->e:I

    .line 587
    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/ge;->f:I

    .line 591
    :goto_1
    iget v0, p0, Lcom/b/a/ge;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/ge;->d:I

    goto :goto_0

    .line 589
    :cond_0
    iget v0, p0, Lcom/b/a/ge;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/ge;->f:I

    goto :goto_1

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/b/a/ge;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v0

    iget-object v1, p0, Lcom/b/a/ge;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 597
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    .line 611
    :goto_2
    return-void

    .line 599
    :cond_2
    iget-object v0, p0, Lcom/b/a/ge;->b:Ljava/util/regex/Matcher;

    sget-object v1, Lcom/b/a/ge;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 600
    iget-object v0, p0, Lcom/b/a/ge;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 601
    iget-object v0, p0, Lcom/b/a/ge;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    .line 602
    iget-object v0, p0, Lcom/b/a/ge;->b:Ljava/util/regex/Matcher;

    iget-object v1, p0, Lcom/b/a/ge;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget-object v2, p0, Lcom/b/a/ge;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 609
    :goto_3
    invoke-direct {p0}, Lcom/b/a/ge;->n()V

    goto :goto_2

    .line 605
    :cond_3
    iget-object v0, p0, Lcom/b/a/ge;->a:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/b/a/ge;->d:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    .line 606
    iget-object v0, p0, Lcom/b/a/ge;->b:Ljava/util/regex/Matcher;

    iget v1, p0, Lcom/b/a/ge;->d:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/b/a/ge;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    goto :goto_3
.end method

.method private n()V
    .locals 3

    .prologue
    .line 618
    iget-object v0, p0, Lcom/b/a/ge;->b:Ljava/util/regex/Matcher;

    sget-object v1, Lcom/b/a/ge;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 619
    iget-object v0, p0, Lcom/b/a/ge;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/b/a/ge;->b:Ljava/util/regex/Matcher;

    iget-object v1, p0, Lcom/b/a/ge;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget-object v2, p0, Lcom/b/a/ge;->b:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 622
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 629
    iget-object v0, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    invoke-direct {p0}, Lcom/b/a/ge;->m()V

    .line 631
    const/4 v0, 0x1

    .line 633
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 642
    invoke-virtual {p0, p1}, Lcom/b/a/ge;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/ge;->c(Ljava/lang/String;)Lcom/b/a/gb;

    move-result-object v0

    throw v0

    .line 645
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 652
    iget-object v0, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 657
    :goto_0
    return v0

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 657
    const/16 v1, 0x30

    if-gt v1, v0, :cond_1

    const/16 v1, 0x39

    if-le v0, v1, :cond_2

    :cond_1
    const/16 v1, 0x2d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Lcom/b/a/gb;
    .locals 3
    .parameter

    .prologue
    .line 866
    new-instance v0, Lcom/b/a/gb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/b/a/ge;->e:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/b/a/ge;->f:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/b/a/gb;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 666
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 667
    iget-object v1, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 668
    const/16 v2, 0x61

    if-gt v2, v1, :cond_0

    const/16 v2, 0x7a

    if-le v1, v2, :cond_3

    :cond_0
    const/16 v2, 0x41

    if-gt v2, v1, :cond_1

    const/16 v2, 0x5a

    if-le v1, v2, :cond_3

    :cond_1
    const/16 v2, 0x30

    if-gt v2, v1, :cond_2

    const/16 v2, 0x39

    if-le v1, v2, :cond_3

    :cond_2
    const/16 v2, 0x5f

    if-eq v1, v2, :cond_3

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_3

    .line 674
    const-string v0, "Expected identifier."

    invoke-virtual {p0, v0}, Lcom/b/a/ge;->c(Ljava/lang/String;)Lcom/b/a/gb;

    move-result-object v0

    throw v0

    .line 666
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 678
    :cond_4
    iget-object v0, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    .line 679
    invoke-direct {p0}, Lcom/b/a/ge;->m()V

    .line 680
    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 689
    :try_start_0
    iget-object v0, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/fy;->b(Ljava/lang/String;)I

    move-result v0

    .line 690
    invoke-direct {p0}, Lcom/b/a/ge;->m()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    return v0

    .line 692
    :catch_0
    move-exception v0

    .line 693
    invoke-direct {p0, v0}, Lcom/b/a/ge;->a(Ljava/lang/NumberFormatException;)Lcom/b/a/gb;

    move-result-object v0

    throw v0
.end method

.method public final d(Ljava/lang/String;)Lcom/b/a/gb;
    .locals 3
    .parameter

    .prologue
    .line 877
    new-instance v0, Lcom/b/a/gb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/b/a/ge;->g:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/b/a/ge;->h:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/b/a/gb;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 703
    :try_start_0
    iget-object v0, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/fy;->c(Ljava/lang/String;)I

    move-result v0

    .line 704
    invoke-direct {p0}, Lcom/b/a/ge;->m()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    return v0

    .line 706
    :catch_0
    move-exception v0

    .line 707
    invoke-direct {p0, v0}, Lcom/b/a/ge;->a(Ljava/lang/NumberFormatException;)Lcom/b/a/gb;

    move-result-object v0

    throw v0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 717
    :try_start_0
    iget-object v0, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/fy;->d(Ljava/lang/String;)J

    move-result-wide v0

    .line 718
    invoke-direct {p0}, Lcom/b/a/ge;->m()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    return-wide v0

    .line 720
    :catch_0
    move-exception v0

    .line 721
    invoke-direct {p0, v0}, Lcom/b/a/ge;->a(Ljava/lang/NumberFormatException;)Lcom/b/a/gb;

    move-result-object v0

    throw v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 731
    :try_start_0
    iget-object v0, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/fy;->e(Ljava/lang/String;)J

    move-result-wide v0

    .line 732
    invoke-direct {p0}, Lcom/b/a/ge;->m()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    return-wide v0

    .line 734
    :catch_0
    move-exception v0

    .line 735
    invoke-direct {p0, v0}, Lcom/b/a/ge;->a(Ljava/lang/NumberFormatException;)Lcom/b/a/gb;

    move-result-object v0

    throw v0
.end method

.method public final h()D
    .locals 2

    .prologue
    .line 746
    sget-object v0, Lcom/b/a/ge;->k:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 747
    iget-object v0, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 748
    invoke-direct {p0}, Lcom/b/a/ge;->m()V

    .line 749
    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x10

    .line 758
    :goto_0
    return-wide v0

    .line 749
    :cond_0
    const-wide/high16 v0, 0x7ff0

    goto :goto_0

    .line 751
    :cond_1
    iget-object v0, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    const-string v1, "nan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 752
    invoke-direct {p0}, Lcom/b/a/ge;->m()V

    .line 753
    const-wide/high16 v0, 0x7ff8

    goto :goto_0

    .line 756
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 757
    invoke-direct {p0}, Lcom/b/a/ge;->m()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 759
    :catch_0
    move-exception v0

    .line 760
    invoke-direct {p0, v0}, Lcom/b/a/ge;->b(Ljava/lang/NumberFormatException;)Lcom/b/a/gb;

    move-result-object v0

    throw v0
.end method

.method public final i()F
    .locals 2

    .prologue
    .line 771
    sget-object v0, Lcom/b/a/ge;->l:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 772
    iget-object v0, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 773
    invoke-direct {p0}, Lcom/b/a/ge;->m()V

    .line 774
    if-eqz v0, :cond_0

    const/high16 v0, -0x80

    .line 783
    :goto_0
    return v0

    .line 774
    :cond_0
    const/high16 v0, 0x7f80

    goto :goto_0

    .line 776
    :cond_1
    sget-object v0, Lcom/b/a/ge;->m:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 777
    invoke-direct {p0}, Lcom/b/a/ge;->m()V

    .line 778
    const/high16 v0, 0x7fc0

    goto :goto_0

    .line 781
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 782
    invoke-direct {p0}, Lcom/b/a/ge;->m()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 784
    :catch_0
    move-exception v0

    .line 785
    invoke-direct {p0, v0}, Lcom/b/a/ge;->b(Ljava/lang/NumberFormatException;)Lcom/b/a/gb;

    move-result-object v0

    throw v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 794
    iget-object v0, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    :cond_0
    invoke-direct {p0}, Lcom/b/a/ge;->m()V

    .line 798
    const/4 v0, 0x1

    .line 803
    :goto_0
    return v0

    .line 799
    :cond_1
    iget-object v0, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 802
    :cond_2
    invoke-direct {p0}, Lcom/b/a/ge;->m()V

    .line 803
    const/4 v0, 0x0

    goto :goto_0

    .line 805
    :cond_3
    const-string v0, "Expected \"true\" or \"false\"."

    invoke-virtual {p0, v0}, Lcom/b/a/ge;->c(Ljava/lang/String;)Lcom/b/a/gb;

    move-result-object v0

    throw v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/b/a/ge;->l()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Lcom/b/a/i;
    .locals 3

    .prologue
    .line 823
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 824
    invoke-direct {p0, v0}, Lcom/b/a/ge;->a(Ljava/util/List;)V

    .line 825
    :goto_0
    iget-object v1, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/b/a/ge;->c:Ljava/lang/String;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 826
    :cond_0
    invoke-direct {p0, v0}, Lcom/b/a/ge;->a(Ljava/util/List;)V

    goto :goto_0

    .line 828
    :cond_1
    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/util/List;)Lcom/b/a/i;

    move-result-object v0

    return-object v0
.end method

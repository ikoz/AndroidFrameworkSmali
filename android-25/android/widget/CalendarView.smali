.class public Landroid/widget/CalendarView;
.super Landroid/widget/FrameLayout;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CalendarView$AbstractCalendarViewDelegate;,
        Landroid/widget/CalendarView$CalendarViewDelegate;,
        Landroid/widget/CalendarView$OnDateChangeListener;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DATE_FORMATTER:Ljava/text/DateFormat;

.field private static final LOG_TAG:Ljava/lang/String; = "CalendarView"

.field private static final MODE_HOLO:I = 0x0

.field private static final MODE_MATERIAL:I = 0x1


# instance fields
.field private final mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 749
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@2
    const-string/jumbo v1, "MM/dd/yyyy"

    #@5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Landroid/widget/CalendarView;->DATE_FORMATTER:Ljava/text/DateFormat;

    #@a
    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 92
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 96
    const v0, 0x101035d

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 101
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 109
    sget-object v0, Lcom/android/internal/R$styleable;->CalendarView:[I

    #@5
    .line 108
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@8
    move-result-object v6

    #@9
    .line 110
    .local v6, "a":Landroid/content/res/TypedArray;
    const/16 v0, 0x10

    #@b
    const/4 v1, 0x0

    #@c
    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@f
    move-result v7

    #@10
    .line 111
    .local v7, "mode":I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    #@13
    .line 113
    packed-switch v7, :pswitch_data_0

    #@16
    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v1, "invalid calendarViewMode attribute"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 115
    :pswitch_0
    new-instance v0, Landroid/widget/CalendarViewLegacyDelegate;

    #@21
    move-object v1, p0

    #@22
    move-object v2, p1

    #@23
    move-object v3, p2

    #@24
    move v4, p3

    #@25
    move v5, p4

    #@26
    invoke-direct/range {v0 .. v5}, Landroid/widget/CalendarViewLegacyDelegate;-><init>(Landroid/widget/CalendarView;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@29
    iput-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2b
    .line 105
    :goto_0
    return-void

    #@2c
    .line 119
    :pswitch_1
    new-instance v0, Landroid/widget/CalendarViewMaterialDelegate;

    #@2e
    move-object v1, p0

    #@2f
    move-object v2, p1

    #@30
    move-object v3, p2

    #@31
    move v4, p3

    #@32
    move v5, p4

    #@33
    invoke-direct/range {v0 .. v5}, Landroid/widget/CalendarViewMaterialDelegate;-><init>(Landroid/widget/CalendarView;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@36
    iput-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@38
    goto :goto_0

    #@39
    .line 113
    nop

    #@3a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z
    .locals 6
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "outDate"    # Landroid/icu/util/Calendar;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 757
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_1

    #@9
    .line 758
    :cond_0
    return v5

    #@a
    .line 762
    :cond_1
    :try_start_0
    sget-object v2, Landroid/widget/CalendarView;->DATE_FORMATTER:Ljava/text/DateFormat;

    #@c
    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    #@f
    move-result-object v1

    #@10
    .line 763
    .local v1, "parsedDate":Ljava/util/Date;
    invoke-virtual {p1, v1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 764
    const/4 v2, 0x1

    #@14
    return v2

    #@15
    .line 765
    .end local v1    # "parsedDate":Ljava/util/Date;
    :catch_0
    move-exception v0

    #@16
    .line 766
    .local v0, "e":Ljava/text/ParseException;
    const-string/jumbo v2, "CalendarView"

    #@19
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v4, "Date: "

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    const-string/jumbo v4, " not in format: "

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    const-string/jumbo v4, "MM/dd/yyyy"

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 767
    return v5
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 556
    const-class v0, Landroid/widget/CalendarView;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDate()J
    .locals 2

    #@0
    .prologue
    .line 510
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getDate()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getDateTextAppearance()I
    .locals 1

    #@0
    .prologue
    .line 369
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getDateTextAppearance()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    #@0
    .prologue
    .line 472
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getFirstDayOfWeek()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getFocusedMonthDateColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 204
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getFocusedMonthDateColor()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMaxDate()J
    .locals 2

    #@0
    .prologue
    .line 414
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getMaxDate()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    #@0
    .prologue
    .line 385
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getMinDate()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getSelectedDateVerticalBar()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 325
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getSelectedDateVerticalBar()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSelectedWeekBackgroundColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 177
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getSelectedWeekBackgroundColor()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getShowWeekNumber()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 453
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getShowWeekNumber()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getShownWeekCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getShownWeekCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getUnfocusedMonthDateColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 231
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getUnfocusedMonthDateColor()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getWeekDayTextAppearance()I
    .locals 1

    #@0
    .prologue
    .line 347
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getWeekDayTextAppearance()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getWeekNumberColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getWeekNumberColor()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getWeekSeparatorLineColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 285
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0}, Landroid/widget/CalendarView$CalendarViewDelegate;->getWeekSeparatorLineColor()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 550
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    .line 551
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@5
    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@8
    .line 549
    return-void
.end method

.method public setDate(J)V
    .locals 1
    .param p1, "date"    # J

    #@0
    .prologue
    .line 527
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/widget/CalendarView$CalendarViewDelegate;->setDate(J)V

    #@5
    .line 526
    return-void
.end method

.method public setDate(JZZ)V
    .locals 1
    .param p1, "date"    # J
    .param p3, "animate"    # Z
    .param p4, "center"    # Z

    #@0
    .prologue
    .line 545
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/CalendarView$CalendarViewDelegate;->setDate(JZZ)V

    #@5
    .line 544
    return-void
.end method

.method public setDateTextAppearance(I)V
    .locals 1
    .param p1, "resourceId"    # I

    #@0
    .prologue
    .line 358
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setDateTextAppearance(I)V

    #@5
    .line 357
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "firstDayOfWeek"    # I

    #@0
    .prologue
    .line 491
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setFirstDayOfWeek(I)V

    #@5
    .line 490
    return-void
.end method

.method public setFocusedMonthDateColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setFocusedMonthDateColor(I)V

    #@5
    .line 189
    return-void
.end method

.method public setMaxDate(J)V
    .locals 1
    .param p1, "maxDate"    # J

    #@0
    .prologue
    .line 427
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/widget/CalendarView$CalendarViewDelegate;->setMaxDate(J)V

    #@5
    .line 426
    return-void
.end method

.method public setMinDate(J)V
    .locals 1
    .param p1, "minDate"    # J

    #@0
    .prologue
    .line 398
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0, p1, p2}, Landroid/widget/CalendarView$CalendarViewDelegate;->setMinDate(J)V

    #@5
    .line 397
    return-void
.end method

.method public setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/CalendarView$OnDateChangeListener;

    #@0
    .prologue
    .line 500
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    #@5
    .line 499
    return-void
.end method

.method public setSelectedDateVerticalBar(I)V
    .locals 1
    .param p1, "resourceId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 299
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setSelectedDateVerticalBar(I)V

    #@5
    .line 298
    return-void
.end method

.method public setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 313
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V

    #@5
    .line 312
    return-void
.end method

.method public setSelectedWeekBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setSelectedWeekBackgroundColor(I)V

    #@5
    .line 162
    return-void
.end method

.method public setShowWeekNumber(Z)V
    .locals 1
    .param p1, "showWeekNumber"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 440
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setShowWeekNumber(Z)V

    #@5
    .line 439
    return-void
.end method

.method public setShownWeekCount(I)V
    .locals 1
    .param p1, "count"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setShownWeekCount(I)V

    #@5
    .line 136
    return-void
.end method

.method public setUnfocusedMonthDateColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 217
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setUnfocusedMonthDateColor(I)V

    #@5
    .line 216
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 1
    .param p1, "resourceId"    # I

    #@0
    .prologue
    .line 336
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setWeekDayTextAppearance(I)V

    #@5
    .line 335
    return-void
.end method

.method public setWeekNumberColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setWeekNumberColor(I)V

    #@5
    .line 243
    return-void
.end method

.method public setWeekSeparatorLineColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 271
    iget-object v0, p0, Landroid/widget/CalendarView;->mDelegate:Landroid/widget/CalendarView$CalendarViewDelegate;

    #@2
    invoke-interface {v0, p1}, Landroid/widget/CalendarView$CalendarViewDelegate;->setWeekSeparatorLineColor(I)V

    #@5
    .line 270
    return-void
.end method
